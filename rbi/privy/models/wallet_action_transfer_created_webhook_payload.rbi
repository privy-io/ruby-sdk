# typed: strong

module Privy
  module Models
    class WalletActionTransferCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionTransferCreatedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Type of wallet action
      sig { returns(Privy::WalletActionType::TaggedSymbol) }
      attr_accessor :action_type

      # ISO 8601 timestamp of when the wallet action was created.
      sig { returns(String) }
      attr_accessor :created_at

      # Recipient address.
      sig { returns(String) }
      attr_accessor :destination_address

      # Chain name (e.g. "base", "ethereum").
      sig { returns(String) }
      attr_accessor :source_chain

      # The status of the wallet action.
      sig do
        returns(
          Privy::WalletActionTransferCreatedWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletActionTransferCreatedWebhookPayload::Type::TaggedSymbol
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
      # initiated with `asset_address` and the decimals were resolved onchain.
      sig { returns(T.nilable(Integer)) }
      attr_reader :source_asset_decimals

      sig { params(source_asset_decimals: Integer).void }
      attr_writer :source_asset_decimals

      # Payload for the wallet_action.transfer.created webhook event.
      sig do
        params(
          action_type: Privy::WalletActionType::OrSymbol,
          created_at: String,
          destination_address: String,
          source_chain: String,
          status:
            Privy::WalletActionTransferCreatedWebhookPayload::Status::OrSymbol,
          type:
            Privy::WalletActionTransferCreatedWebhookPayload::Type::OrSymbol,
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
        # ISO 8601 timestamp of when the wallet action was created.
        created_at:,
        # Recipient address.
        destination_address:,
        # Chain name (e.g. "base", "ethereum").
        source_chain:,
        # The status of the wallet action.
        status:,
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
        # initiated with `asset_address` and the decimals were resolved onchain.
        source_asset_decimals: nil
      )
      end

      sig do
        override.returns(
          {
            action_type: Privy::WalletActionType::TaggedSymbol,
            created_at: String,
            destination_address: String,
            source_chain: String,
            status:
              Privy::WalletActionTransferCreatedWebhookPayload::Status::TaggedSymbol,
            type:
              Privy::WalletActionTransferCreatedWebhookPayload::Type::TaggedSymbol,
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
              Privy::WalletActionTransferCreatedWebhookPayload::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Privy::WalletActionTransferCreatedWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionTransferCreatedWebhookPayload::Status::TaggedSymbol
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
              Privy::WalletActionTransferCreatedWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_TRANSFER_CREATED =
          T.let(
            :"wallet_action.transfer.created",
            Privy::WalletActionTransferCreatedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionTransferCreatedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
