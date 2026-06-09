# typed: strong

module Privy
  module Models
    class ExchangeStripeTokensInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExchangeStripeTokensInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :auth_intent_id

      sig { returns(String) }
      attr_accessor :crypto_customer_id

      # Whether to use the sandbox or production environment for fiat onramp.
      sig { returns(T.nilable(Privy::FiatOnrampEnvironment::OrSymbol)) }
      attr_reader :environment

      sig { params(environment: Privy::FiatOnrampEnvironment::OrSymbol).void }
      attr_writer :environment

      # Input for exchanging a Link auth intent for OAuth tokens.
      sig do
        params(
          auth_intent_id: String,
          crypto_customer_id: String,
          environment: Privy::FiatOnrampEnvironment::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        auth_intent_id:,
        crypto_customer_id:,
        # Whether to use the sandbox or production environment for fiat onramp.
        environment: nil
      )
      end

      sig do
        override.returns(
          {
            auth_intent_id: String,
            crypto_customer_id: String,
            environment: Privy::FiatOnrampEnvironment::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
