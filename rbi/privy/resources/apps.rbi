# typed: strong

module Privy
  module Resources
    # Operations related to app settings and allowlist management
    class Apps
      # Operations related to app settings and allowlist management
      sig { returns(Privy::Resources::Apps::Allowlist) }
      attr_reader :allowlist

      # Get the settings and configuration for an app.
      sig do
        params(
          app_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::AppResponse)
      end
      def get(
        # The ID of the app.
        app_id,
        request_options: {}
      )
      end

      # Get aggregated Privy gas credits charged for a set of wallets over a time range.
      # Maximum 100 wallet IDs and 30-day range per request.
      sig do
        params(
          end_timestamp: Float,
          start_timestamp: Float,
          wallet_ids: T::Array[String],
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::GasSpendResponseBody)
      end
      def get_gas_spend(
        end_timestamp:,
        start_timestamp:,
        wallet_ids:,
        request_options: {}
      )
      end

      # Get the test accounts and credentials for an app.
      sig do
        params(
          app_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::TestAccountsResponse)
      end
      def get_test_credentials(
        # The ID of the app.
        app_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Privy::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
