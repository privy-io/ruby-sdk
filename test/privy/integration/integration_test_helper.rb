# frozen_string_literal: true

require "dotenv/load"
require_relative "../test_helper"

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
