# typed: strong

module Privy
  module Models
    class WalletActionTransferSucceededWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionTransferSucceededWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Type of wallet action
      sig { returns(Privy::WalletActionType::TaggedSymbol) }
      attr_accessor :action_type

      # Recipient address.
      sig { returns(String) }
      attr_accessor :destination_address

      # Chain name (e.g. "base", "ethereum").
      sig { returns(String) }
      attr_accessor :source_chain

      # The status of the wallet action.
      sig do
        returns(
          Privy::WalletActionTransferSucceededWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The steps of the wallet action, including transaction hashes.
      sig { returns(T::Array[Privy::WalletActionStep::Variants]) }
      attr_accessor :steps

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletActionTransferSucceededWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :wallet_action_id

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Decimal amount sent on the source chain (e.g. "1.5"). Omitted for exact_output
      # cross-chain transfers until the source amount is determined.
      sig { returns(T.nilable(String)) }
      attr_reader :source_amount

      sig { params(source_amount: String).void }
      attr_writer :source_amount

      # Asset identifier (e.g. "usdc", "eth"). Present when the transfer was initiated
      # with a named asset; omitted for custom-token transfers.
      sig { returns(T.nilable(String)) }
      attr_reader :source_asset

      sig { params(source_asset: String).void }
      attr_writer :source_asset

      # Token contract address (EVM) or mint address (Solana). Present when the transfer
      # was initiated with `asset_address`.
      sig { returns(T.nilable(String)) }
      attr_reader :source_asset_address

      sig { params(source_asset_address: String).void }
      attr_writer :source_asset_address

      # Number of decimals for the transferred token. Present when the transfer was
      # initiated with `asset_address` and the decimals were resolved on-chain.
      sig { returns(T.nilable(Integer)) }
      attr_reader :source_asset_decimals

      sig { params(source_asset_decimals: Integer).void }
      attr_writer :source_asset_decimals

      # Payload for the wallet_action.transfer.succeeded webhook event.
      sig do
        params(
          action_type: Privy::WalletActionType::OrSymbol,
          destination_address: String,
          source_chain: String,
          status:
            Privy::WalletActionTransferSucceededWebhookPayload::Status::OrSymbol,
          steps:
            T::Array[
              T.any(
                Privy::EvmTransactionWalletActionStep::OrHash,
                Privy::EvmUserOperationWalletActionStep::OrHash,
                Privy::SvmTransactionWalletActionStep::OrHash,
                Privy::ExternalTransactionWalletActionStep::OrHash,
                Privy::CustodianTransactionWalletActionStep::OrHash
              )
            ],
          type:
            Privy::WalletActionTransferSucceededWebhookPayload::Type::OrSymbol,
          wallet_action_id: String,
          wallet_id: String,
          source_amount: String,
          source_asset: String,
          source_asset_address: String,
          source_asset_decimals: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Type of wallet action
        action_type:,
        # Recipient address.
        destination_address:,
        # Chain name (e.g. "base", "ethereum").
        source_chain:,
        # The status of the wallet action.
        status:,
        # The steps of the wallet action, including transaction hashes.
        steps:,
        # The type of webhook event.
        type:,
        # The ID of the wallet action.
        wallet_action_id:,
        # The ID of the wallet involved in the action.
        wallet_id:,
        # Decimal amount sent on the source chain (e.g. "1.5"). Omitted for exact_output
        # cross-chain transfers until the source amount is determined.
        source_amount: nil,
        # Asset identifier (e.g. "usdc", "eth"). Present when the transfer was initiated
        # with a named asset; omitted for custom-token transfers.
        source_asset: nil,
        # Token contract address (EVM) or mint address (Solana). Present when the transfer
        # was initiated with `asset_address`.
        source_asset_address: nil,
        # Number of decimals for the transferred token. Present when the transfer was
        # initiated with `asset_address` and the decimals were resolved on-chain.
        source_asset_decimals: nil
      )
      end

      sig do
        override.returns(
          {
            action_type: Privy::WalletActionType::TaggedSymbol,
            destination_address: String,
            source_chain: String,
            status:
              Privy::WalletActionTransferSucceededWebhookPayload::Status::TaggedSymbol,
            steps: T::Array[Privy::WalletActionStep::Variants],
            type:
              Privy::WalletActionTransferSucceededWebhookPayload::Type::TaggedSymbol,
            wallet_action_id: String,
            wallet_id: String,
            source_amount: String,
            source_asset: String,
            source_asset_address: String,
            source_asset_decimals: Integer
          }
        )
      end
      def to_hash
      end

      # The status of the wallet action.
      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::WalletActionTransferSucceededWebhookPayload::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUCCEEDED =
          T.let(
            :succeeded,
            Privy::WalletActionTransferSucceededWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionTransferSucceededWebhookPayload::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::WalletActionTransferSucceededWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_TRANSFER_SUCCEEDED =
          T.let(
            :"wallet_action.transfer.succeeded",
            Privy::WalletActionTransferSucceededWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionTransferSucceededWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
