# typed: strong

module Privy
  module Models
    class YieldDepositConfirmedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::YieldDepositConfirmedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :assets

      sig { returns(String) }
      attr_accessor :caip2

      sig { returns(String) }
      attr_accessor :owner

      sig { returns(String) }
      attr_accessor :sender

      sig { returns(String) }
      attr_accessor :shares

      # The type of webhook event.
      sig do
        returns(Privy::YieldDepositConfirmedWebhookPayload::Type::TaggedSymbol)
      end
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :vault_address

      # Payload for the yield.deposit.confirmed webhook event.
      sig do
        params(
          assets: String,
          caip2: String,
          owner: String,
          sender: String,
          shares: String,
          type: Privy::YieldDepositConfirmedWebhookPayload::Type::OrSymbol,
          vault_address: String
        ).returns(T.attached_class)
      end
      def self.new(
        assets:,
        caip2:,
        owner:,
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
            owner: String,
            sender: String,
            shares: String,
            type:
              Privy::YieldDepositConfirmedWebhookPayload::Type::TaggedSymbol,
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
            T.all(Symbol, Privy::YieldDepositConfirmedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        YIELD_DEPOSIT_CONFIRMED =
          T.let(
            :"yield.deposit.confirmed",
            Privy::YieldDepositConfirmedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::YieldDepositConfirmedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
