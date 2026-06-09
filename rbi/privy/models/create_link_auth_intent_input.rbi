# typed: strong

module Privy
  module Models
    class CreateLinkAuthIntentInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CreateLinkAuthIntentInput, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Whether to use the sandbox or production environment for fiat onramp.
      sig { returns(T.nilable(Privy::FiatOnrampEnvironment::OrSymbol)) }
      attr_reader :environment

      sig { params(environment: Privy::FiatOnrampEnvironment::OrSymbol).void }
      attr_writer :environment

      # Input for creating a Link auth intent to initiate Stripe onramp authentication.
      sig do
        params(
          email: String,
          environment: Privy::FiatOnrampEnvironment::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        email: nil,
        # Whether to use the sandbox or production environment for fiat onramp.
        environment: nil
      )
      end

      sig do
        override.returns(
          { email: String, environment: Privy::FiatOnrampEnvironment::OrSymbol }
        )
      end
      def to_hash
      end
    end
  end
end
