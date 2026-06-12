# typed: strong

module Privy
  module Models
    class YieldClaimConfirmedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::YieldClaimConfirmedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :caip2

      sig { returns(T::Array[Privy::YieldClaimReward]) }
      attr_accessor :rewards

      sig { returns(String) }
      attr_accessor :transaction_id

      # The type of webhook event.
      sig do
        returns(Privy::YieldClaimConfirmedWebhookPayload::Type::TaggedSymbol)
      end
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :wallet_id

      # Payload for the yield.claim.confirmed webhook event.
      sig do
        params(
          caip2: String,
          rewards: T::Array[Privy::YieldClaimReward::OrHash],
          transaction_id: String,
          type: Privy::YieldClaimConfirmedWebhookPayload::Type::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        caip2:,
        rewards:,
        transaction_id:,
        # The type of webhook event.
        type:,
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            rewards: T::Array[Privy::YieldClaimReward],
            transaction_id: String,
            type: Privy::YieldClaimConfirmedWebhookPayload::Type::TaggedSymbol,
            wallet_id: String
          }
        )
      end
      def to_hash
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::YieldClaimConfirmedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        YIELD_CLAIM_CONFIRMED =
          T.let(
            :"yield.claim.confirmed",
            Privy::YieldClaimConfirmedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::YieldClaimConfirmedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
