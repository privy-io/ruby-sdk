# typed: strong

module Privy
  module Models
    class FiatOnrampStripeSDKSessionResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::FiatOnrampStripeSDKSessionResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :network

      sig { returns(String) }
      attr_accessor :publishable_key

      sig { returns(String) }
      attr_accessor :session_id

      sig { returns(Privy::FiatOnrampStripeSDKSessionResponse::Type::OrSymbol) }
      attr_accessor :type

      # Provider session initialization for embedded SDK providers (Stripe).
      sig do
        params(
          network: String,
          publishable_key: String,
          session_id: String,
          type: Privy::FiatOnrampStripeSDKSessionResponse::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(network:, publishable_key:, session_id:, type:)
      end

      sig do
        override.returns(
          {
            network: String,
            publishable_key: String,
            session_id: String,
            type: Privy::FiatOnrampStripeSDKSessionResponse::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::FiatOnrampStripeSDKSessionResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STRIPE_SDK =
          T.let(
            :"stripe-sdk",
            Privy::FiatOnrampStripeSDKSessionResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::FiatOnrampStripeSDKSessionResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
