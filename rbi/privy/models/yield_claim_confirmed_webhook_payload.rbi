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

      sig do
        returns(T::Array[Privy::YieldClaimConfirmedWebhookPayload::Reward])
      end
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
          rewards:
            T::Array[Privy::YieldClaimConfirmedWebhookPayload::Reward::OrHash],
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
            rewards: T::Array[Privy::YieldClaimConfirmedWebhookPayload::Reward],
            transaction_id: String,
            type: Privy::YieldClaimConfirmedWebhookPayload::Type::TaggedSymbol,
            wallet_id: String
          }
        )
      end
      def to_hash
      end

      class Reward < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::YieldClaimConfirmedWebhookPayload::Reward,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :token_address

        sig { returns(String) }
        attr_accessor :token_symbol

        sig do
          params(
            amount: String,
            token_address: String,
            token_symbol: String
          ).returns(T.attached_class)
        end
        def self.new(amount:, token_address:, token_symbol:)
        end

        sig do
          override.returns(
            { amount: String, token_address: String, token_symbol: String }
          )
        end
        def to_hash
        end
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
