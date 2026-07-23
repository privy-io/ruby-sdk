# typed: strong

module Privy
  module Models
    class TransactionBroadcastedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TransactionBroadcastedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # The CAIP-2 chain identifier (e.g., eip155:4217 for Tempo, eip155:1 for Ethereum
      # mainnet).
      sig { returns(String) }
      attr_accessor :caip2

      # The blockchain transaction hash.
      sig { returns(String) }
      attr_accessor :transaction_hash

      # The Privy-assigned ID for this transaction.
      sig { returns(String) }
      attr_accessor :transaction_id

      # The type of webhook event.
      sig do
        returns(Privy::TransactionBroadcastedWebhookPayload::Type::TaggedSymbol)
      end
      attr_accessor :type

      # The ID of the wallet that initiated the transaction.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Developer-provided reference ID for transaction reconciliation, if one was
      # provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :reference_id

      # Payload for the transaction.broadcasted webhook event.
      sig do
        params(
          caip2: String,
          transaction_hash: String,
          transaction_id: String,
          type: Privy::TransactionBroadcastedWebhookPayload::Type::OrSymbol,
          wallet_id: String,
          reference_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The CAIP-2 chain identifier (e.g., eip155:4217 for Tempo, eip155:1 for Ethereum
        # mainnet).
        caip2:,
        # The blockchain transaction hash.
        transaction_hash:,
        # The Privy-assigned ID for this transaction.
        transaction_id:,
        # The type of webhook event.
        type:,
        # The ID of the wallet that initiated the transaction.
        wallet_id:,
        # Developer-provided reference ID for transaction reconciliation, if one was
        # provided.
        reference_id: nil
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            transaction_hash: String,
            transaction_id: String,
            type:
              Privy::TransactionBroadcastedWebhookPayload::Type::TaggedSymbol,
            wallet_id: String,
            reference_id: T.nilable(String)
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
            T.all(Symbol, Privy::TransactionBroadcastedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSACTION_BROADCASTED =
          T.let(
            :"transaction.broadcasted",
            Privy::TransactionBroadcastedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::TransactionBroadcastedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
