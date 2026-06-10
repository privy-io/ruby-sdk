# typed: strong

module Privy
  module Models
    class FundsWithdrawnWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FundsWithdrawnWebhookPayload, Privy::Internal::AnyHash)
        end

      # The amount transferred, as a stringified bigint.
      sig { returns(String) }
      attr_accessor :amount

      # An asset involved in a wallet transfer.
      sig { returns(Privy::WalletFundsAsset::Variants) }
      attr_accessor :asset

      # Block metadata for a wallet transfer event.
      sig { returns(Privy::BlockInfo) }
      attr_reader :block

      sig { params(block: Privy::BlockInfo::OrHash).void }
      attr_writer :block

      # The CAIP-2 chain identifier.
      sig { returns(String) }
      attr_accessor :caip2

      # A unique key for this event.
      sig { returns(String) }
      attr_accessor :idempotency_key

      # The recipient address.
      sig { returns(String) }
      attr_accessor :recipient

      # The sender address.
      sig { returns(String) }
      attr_accessor :sender

      # The blockchain transaction hash.
      sig { returns(String) }
      attr_accessor :transaction_hash

      # The type of webhook event.
      sig { returns(Privy::FundsWithdrawnWebhookPayload::Type::TaggedSymbol) }
      attr_accessor :type

      # The ID of the wallet.
      sig { returns(String) }
      attr_accessor :wallet_id

      # The transaction fee paid, as a stringified bigint in the chain's native token.
      sig { returns(T.nilable(String)) }
      attr_reader :transaction_fee

      sig { params(transaction_fee: String).void }
      attr_writer :transaction_fee

      # Payload for the wallet.funds_withdrawn webhook event.
      sig do
        params(
          amount: String,
          asset:
            T.any(
              Privy::WalletFundsNativeTokenAsset::OrHash,
              Privy::WalletFundsErc20Asset::OrHash,
              Privy::WalletFundsSplAsset::OrHash,
              Privy::WalletFundsSacAsset::OrHash
            ),
          block: Privy::BlockInfo::OrHash,
          caip2: String,
          idempotency_key: String,
          recipient: String,
          sender: String,
          transaction_hash: String,
          type: Privy::FundsWithdrawnWebhookPayload::Type::OrSymbol,
          wallet_id: String,
          transaction_fee: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount transferred, as a stringified bigint.
        amount:,
        # An asset involved in a wallet transfer.
        asset:,
        # Block metadata for a wallet transfer event.
        block:,
        # The CAIP-2 chain identifier.
        caip2:,
        # A unique key for this event.
        idempotency_key:,
        # The recipient address.
        recipient:,
        # The sender address.
        sender:,
        # The blockchain transaction hash.
        transaction_hash:,
        # The type of webhook event.
        type:,
        # The ID of the wallet.
        wallet_id:,
        # The transaction fee paid, as a stringified bigint in the chain's native token.
        transaction_fee: nil
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            asset: Privy::WalletFundsAsset::Variants,
            block: Privy::BlockInfo,
            caip2: String,
            idempotency_key: String,
            recipient: String,
            sender: String,
            transaction_hash: String,
            type: Privy::FundsWithdrawnWebhookPayload::Type::TaggedSymbol,
            wallet_id: String,
            transaction_fee: String
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
            T.all(Symbol, Privy::FundsWithdrawnWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_FUNDS_WITHDRAWN =
          T.let(
            :"wallet.funds_withdrawn",
            Privy::FundsWithdrawnWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::FundsWithdrawnWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
