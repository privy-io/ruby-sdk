# frozen_string_literal: true

module Privy
  module Services
    # Shared helpers for services that need to inject authorization headers.
    #
    # Including classes must define `privy_client` (returns the PrivyClient
    # instance) — typically via `attr_reader :privy_client` set in initialize.
    module AuthorizationSupport
      # Builds the full URL used during request canonicalization. Must match
      # what the server canonicalizes: "<scheme>://<host>[:port]/<path>" with
      # no trailing slash on the base.
      def signed_url(path)
        base = privy_client.api.base_url.to_s.chomp("/")
        "#{base}/#{path}"
      end

      # Merges headers from a PreparedRequest into the params hash that will
      # be passed to `super` (the generated resource method). Converts HTTP
      # header names ("privy-authorization-signature") to the symbol keys the
      # generated code expects (:privy_authorization_signature).
      def merge_prepared_headers!(params, prepared)
        prepared.headers.each do |header_name, value|
          params[header_name.tr("-", "_").to_sym] = value
        end
      end
    end
  end
end
