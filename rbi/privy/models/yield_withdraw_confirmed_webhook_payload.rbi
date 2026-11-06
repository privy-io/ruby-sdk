# typed: strong

module Privy
  module Models
    class YieldWithdrawConfirmedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::YieldWithdrawConfirmedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :assets

      sig { returns(String) }
      attr_accessor :caip2

      # The ID of this event, stable across repeat deliveries so clients can deduplicate
      # on it.
      sig { returns(String) }
      attr_accessor :event_id

      sig { returns(String) }
      attr_accessor :owner

      sig { returns(String) }
      attr_accessor :receiver

      sig { returns(String) }
      attr_accessor :sender

      sig { returns(String) }
      attr_accessor :shares

      # The type of webhook event.
      sig do
        returns(Privy::YieldWithdrawConfirmedWebhookPayload::Type::TaggedSymbol)
      end
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :vault_address

      # Payload for the yield.withdraw.confirmed webhook event.
      sig do
        params(
          assets: String,
          caip2: String,
          event_id: String,
          owner: String,
          receiver: String,
          sender: String,
          shares: String,
          type: Privy::YieldWithdrawConfirmedWebhookPayload::Type::OrSymbol,
          vault_address: String
        ).returns(T.attached_class)
      end
      def self.new(
        assets:,
        caip2:,
        # The ID of this event, stable across repeat deliveries so clients can deduplicate
        # on it.
        event_id:,
        owner:,
        receiver:,
        sender:,
        shares:,
        # The type of webhook event.
        type:,
        vault_address:
      )
      end

      sig do
        override.returns(
          {
            assets: String,
            caip2: String,
            event_id: String,
            owner: String,
            receiver: String,
            sender: String,
            shares: String,
            type:
              Privy::YieldWithdrawConfirmedWebhookPayload::Type::TaggedSymbol,
            vault_address: String
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
            T.all(Symbol, Privy::YieldWithdrawConfirmedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        YIELD_WITHDRAW_CONFIRMED =
          T.let(
            :"yield.withdraw.confirmed",
            Privy::YieldWithdrawConfirmedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::YieldWithdrawConfirmedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
