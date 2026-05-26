# typed: strong

module Privy
  module Models
    class CreateStripeOnrampSessionInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CreateStripeOnrampSessionInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :auth_intent_id

      # Whether to use the sandbox or production environment for fiat onramp.
      sig { returns(Privy::FiatOnrampEnvironment::OrSymbol) }
      attr_accessor :environment

      # Parameters for creating a Stripe onramp session.
      sig { returns(Privy::OnrampSessionParams) }
      attr_reader :session

      sig { params(session: Privy::OnrampSessionParams::OrHash).void }
      attr_writer :session

      sig { returns(String) }
      attr_accessor :session_id

      # Input for creating a Stripe onramp session.
      sig do
        params(
          auth_intent_id: String,
          environment: Privy::FiatOnrampEnvironment::OrSymbol,
          session: Privy::OnrampSessionParams::OrHash,
          session_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        auth_intent_id:,
        # Whether to use the sandbox or production environment for fiat onramp.
        environment:,
        # Parameters for creating a Stripe onramp session.
        session:,
        session_id:
      )
      end

      sig do
        override.returns(
          {
            auth_intent_id: String,
            environment: Privy::FiatOnrampEnvironment::OrSymbol,
            session: Privy::OnrampSessionParams,
            session_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
