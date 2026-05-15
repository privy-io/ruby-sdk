# frozen_string_literal: true

require "dotenv/load"
require_relative "../test_helper"
require_relative "support/jwt_helpers"

module Privy
  module Test
    # Loads env-var config for live-backend tests.
    module IntegrationConfig
      def self.app_id
        ENV["TEST_APP_ID"]
      end

      def self.app_secret
        ENV["TEST_APP_SECRET"]
      end

      def self.api_url
        ENV.fetch("TEST_API_URL", "https://api.staging.privy.io")
      end

      def self.configured?
        !(app_id.nil? || app_id.empty? || app_secret.nil? || app_secret.empty?)
      end

      def self.skip_reason
        "Skipping integration test: set TEST_APP_ID and TEST_APP_SECRET (via .env or environment) " \
          "to run against #{api_url}"
      end
    end

    # Namespace for live-backend integration tests.
    module Integration
    end

    # Base class for live-backend tests. Disables WebMock's net-connect block
    # for the test duration and exposes a memoized PrivyClient pointed at the
    # configured API URL.
    class IntegrationTest < Minitest::Test
      include Privy::Test::Integration::JwtHelpers

      def setup
        unless Privy::Test::IntegrationConfig.configured?
          skip(Privy::Test::IntegrationConfig.skip_reason)
        end
        WebMock.allow_net_connect! if defined?(WebMock)
      end

      def teardown
        WebMock.disable_net_connect! if defined?(WebMock)
      end

      def client
        @client ||= Privy::PrivyClient.new(
          app_id: Privy::Test::IntegrationConfig.app_id,
          app_secret: Privy::Test::IntegrationConfig.app_secret,
          base_url: Privy::Test::IntegrationConfig.api_url
        )
      end
    end
  end
end

# Opt-in HTTP traces for integration tests.
#
# The Stainless-generated client has no logger option. This prepend hooks
# Net::HTTP#set_debug_output onto the pooled connection factory so that every
# request/response pair (status line, headers, body) goes to $stderr when
# PRIVY_LOG_HTTP=1 is set. Unit tests use WebMock and never reach this code.
#
# WARNING: traces include the Authorization header, which base64-decodes to
# app_id:app_secret. Do not paste traces into issues or share CI logs verbatim.
module Privy
  module Test
    # Wraps an IO to make Net::HTTP debug output readable.
    # Net::HTTP writes each chunk to debug_output as either a literal direction
    # prefix ("<- " or "-> ") or a String#dump-quoted chunk ('"POST /foo HTTP/1.1\r\n..."').
    # We track the last-seen prefix, undump the quoted chunks, then re-emit
    # each line with the prefix attached.
    class ReadableHTTPDebugIO
      DIRECTION_PREFIXES = ["<- ", "-> "].freeze
      # Matches "-> \"...dumped...\"\n" (Net::BufferedIO#rbuf_fill), capturing
      # the direction arrow and the dumped payload (with surrounding quotes).
      COMBINED_LINE_RE = /\A(<-|->) (".*")\n?\z/m

      def initialize(sink)
        @sink = sink
        @prefix = ""
      end

      def <<(chunk)
        s = chunk.to_s

        # Pattern 1: bare direction prefix (Net::BufferedIO#write0 emits "<- "
        # as its own chunk, followed by dumped payload, followed by "\n").
        if DIRECTION_PREFIXES.include?(s)
          @prefix = s
          return self
        end

        # Pattern 2: combined "-> \"...\"\n" line (Net::BufferedIO#rbuf_fill
        # writes the response line as a single chunk).
        if (m = s.match(COMBINED_LINE_RE))
          emit_with_prefix("#{m[1]} ", safe_undump(m[2]))
          return self
        end

        # Pattern 3: plain LOG message ("reading N bytes...\n" etc.) or the
        # bare "\n" terminator that follows the request-side dumped chunk.
        unless s.start_with?('"') && s.end_with?('"')
          return self if s.match?(/\A\s*\z/) # skip bare whitespace terminators
          emit_with_prefix("", s.chomp)
          return self
        end

        # Pattern 4: dumped payload following a stored @prefix (request side).
        emit_with_prefix(@prefix, safe_undump(s))
        self
      end

      def write(str)
        self << str
        str.length
      end

      private

      def safe_undump(quoted)
        undumped = quoted.undump
        # Binary response bodies (e.g. gzipped) contain bytes that $stderr
        # (UTF-8) cannot encode. Keep the ASCII-safe dumped form in that case.
        undumped.dup.force_encoding(Encoding::UTF_8).valid_encoding? ? undumped : quoted
      rescue StandardError
        quoted
      end

      def emit_with_prefix(prefix, text)
        lines = text.split(/\r?\n/, -1)
        lines.each_with_index do |line, i|
          last = (i == lines.length - 1)
          # Skip the empty sentinel split returns for text ending in a
          # newline; we've already terminated the previous line.
          next if last && line.empty?

          @sink << prefix << line << "\n"
        end
      end
    end

    module HTTPLogging
      def connect(cert_store:, url:)
        conn = super
        conn.set_debug_output(Privy::Test::ReadableHTTPDebugIO.new($stderr)) if ENV["PRIVY_LOG_HTTP"] == "1"
        conn
      end
    end
  end
end

Privy::Internal::Transport::PooledNetRequester.singleton_class.prepend(Privy::Test::HTTPLogging)

# When HTTP logging is enabled, disable response compression so traces show
# readable JSON bodies instead of gzipped bytes. Prepended onto Net::HTTP#request
# because Net::HTTPGenericRequest defaults Accept-Encoding to a gzip-preferring
# q-list and sets @decode_content=true.
module Privy
  module Test
    module DisableCompressionForLogging
      def request(req, body = nil, &block)
        req["Accept-Encoding"] = "identity"
        super
      end
    end
  end
end

Net::HTTP.prepend(Privy::Test::DisableCompressionForLogging) if ENV["PRIVY_LOG_HTTP"] == "1"
