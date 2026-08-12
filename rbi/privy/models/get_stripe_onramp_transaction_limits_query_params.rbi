# typed: strong

module Privy
  module Models
    class GetStripeOnrampTransactionLimitsQueryParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::GetStripeOnrampTransactionLimitsQueryParams,
            Privy::Internal::AnyHash
          )
        end

      # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      sig { returns(String) }
      attr_accessor :destination_chain

      # Whether to use the sandbox or production environment for fiat onramp.
      sig { returns(Privy::FiatOnrampEnvironment::OrSymbol) }
      attr_accessor :environment

      # The destination wallet address.
      sig { returns(String) }
      attr_accessor :wallet_address

      # Query parameters for retrieving Stripe onramp transaction limits.
      sig do
        params(
          destination_chain: String,
          environment: Privy::FiatOnrampEnvironment::OrSymbol,
          wallet_address: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
        destination_chain:,
        # Whether to use the sandbox or production environment for fiat onramp.
        environment:,
        # The destination wallet address.
        wallet_address:
      )
      end

      sig do
        override.returns(
          {
            destination_chain: String,
            environment: Privy::FiatOnrampEnvironment::OrSymbol,
            wallet_address: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
