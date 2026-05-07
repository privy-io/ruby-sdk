# typed: strong

module Privy
  module Models
    class WalletActionEarnWithdrawCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionEarnWithdrawCreatedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Type of wallet action
      sig { returns(Privy::WalletActionType::TaggedSymbol) }
      attr_accessor :action_type

      # Underlying asset token address.
      sig { returns(String) }
      attr_accessor :asset_address

      # CAIP-2 chain identifier.
      sig { returns(String) }
      attr_accessor :caip2

      # Base-unit amount of asset withdrawn (e.g. "1500000").
      sig { returns(String) }
      attr_accessor :raw_amount

      # The status of the wallet action.
      sig do
        returns(
          Privy::WalletActionEarnWithdrawCreatedWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletActionEarnWithdrawCreatedWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # ERC-4626 vault contract address.
      sig { returns(String) }
      attr_accessor :vault_address

      # The vault ID.
      sig { returns(String) }
      attr_accessor :vault_id

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :wallet_action_id

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Human-readable decimal amount of asset withdrawn (e.g. "1.5"). Only present when
      # the token is known in the asset registry.
      sig { returns(T.nilable(String)) }
      attr_reader :amount

      sig { params(amount: String).void }
      attr_writer :amount

      # Asset identifier (e.g. "usdc", "eth"). Only present when the token is known in
      # the asset registry.
      sig { returns(T.nilable(String)) }
      attr_reader :asset

      sig { params(asset: String).void }
      attr_writer :asset

      # Number of decimals for the underlying asset (e.g. 6 for USDC, 18 for ETH). Only
      # present when the token is known in the asset registry.
      sig { returns(T.nilable(Integer)) }
      attr_reader :decimals

      sig { params(decimals: Integer).void }
      attr_writer :decimals

      # Payload for the wallet_action.earn_withdraw.created webhook event.
      sig do
        params(
          action_type: Privy::WalletActionType::OrSymbol,
          asset_address: String,
          caip2: String,
          raw_amount: String,
          status:
            Privy::WalletActionEarnWithdrawCreatedWebhookPayload::Status::OrSymbol,
          type:
            Privy::WalletActionEarnWithdrawCreatedWebhookPayload::Type::OrSymbol,
          vault_address: String,
          vault_id: String,
          wallet_action_id: String,
          wallet_id: String,
          amount: String,
          asset: String,
          decimals: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Type of wallet action
        action_type:,
        # Underlying asset token address.
        asset_address:,
        # CAIP-2 chain identifier.
        caip2:,
        # Base-unit amount of asset withdrawn (e.g. "1500000").
        raw_amount:,
        # The status of the wallet action.
        status:,
        # The type of webhook event.
        type:,
        # ERC-4626 vault contract address.
        vault_address:,
        # The vault ID.
        vault_id:,
        # The ID of the wallet action.
        wallet_action_id:,
        # The ID of the wallet involved in the action.
        wallet_id:,
        # Human-readable decimal amount of asset withdrawn (e.g. "1.5"). Only present when
        # the token is known in the asset registry.
        amount: nil,
        # Asset identifier (e.g. "usdc", "eth"). Only present when the token is known in
        # the asset registry.
        asset: nil,
        # Number of decimals for the underlying asset (e.g. 6 for USDC, 18 for ETH). Only
        # present when the token is known in the asset registry.
        decimals: nil
      )
      end

      sig do
        override.returns(
          {
            action_type: Privy::WalletActionType::TaggedSymbol,
            asset_address: String,
            caip2: String,
            raw_amount: String,
            status:
              Privy::WalletActionEarnWithdrawCreatedWebhookPayload::Status::TaggedSymbol,
            type:
              Privy::WalletActionEarnWithdrawCreatedWebhookPayload::Type::TaggedSymbol,
            vault_address: String,
            vault_id: String,
            wallet_action_id: String,
            wallet_id: String,
            amount: String,
            asset: String,
            decimals: Integer
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
              Privy::WalletActionEarnWithdrawCreatedWebhookPayload::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Privy::WalletActionEarnWithdrawCreatedWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionEarnWithdrawCreatedWebhookPayload::Status::TaggedSymbol
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
              Privy::WalletActionEarnWithdrawCreatedWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_EARN_WITHDRAW_CREATED =
          T.let(
            :"wallet_action.earn_withdraw.created",
            Privy::WalletActionEarnWithdrawCreatedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionEarnWithdrawCreatedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
