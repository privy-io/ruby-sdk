# typed: strong

module Privy
  module Models
    class WalletActionPayoutCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionPayoutCreatedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Type of wallet action
      sig { returns(Privy::Wallets::WalletActionType::TaggedSymbol) }
      attr_accessor :action_type

      # ISO 8601 timestamp of when the wallet action was created.
      sig { returns(String) }
      attr_accessor :created_at

      # The fiat currency the payout settles in (e.g. "usd").
      sig { returns(String) }
      attr_accessor :destination_currency

      # The registered external fiat account the payout settles to.
      sig { returns(String) }
      attr_accessor :destination_fiat_account_id

      # The fiat payment rail the payout settles over (e.g. "ach", "sepa", "wire").
      sig { returns(String) }
      attr_accessor :destination_payment_rail

      # The Privy API environment.
      sig { returns(Privy::Environment::TaggedSymbol) }
      attr_accessor :environment

      # Supported fiat orchestration providers.
      sig { returns(Privy::OrchestrationProvider::TaggedSymbol) }
      attr_accessor :provider

      # Decimal amount offramped, in the asset's standard units (e.g. "100.00").
      sig { returns(String) }
      attr_accessor :source_amount

      # Source crypto asset sent on-chain (e.g. "usdc").
      sig { returns(String) }
      attr_accessor :source_asset

      # Source chain the crypto was sent from (e.g. "base").
      sig { returns(String) }
      attr_accessor :source_chain

      # The status of the wallet action.
      sig do
        returns(
          Privy::WalletActionPayoutCreatedWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletActionPayoutCreatedWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :wallet_action_id

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Developer-provided reference ID, if one was included in the request.
      sig { returns(T.nilable(String)) }
      attr_accessor :reference_id

      # Payload for the wallet_action.payout.created webhook event.
      sig do
        params(
          action_type: Privy::Wallets::WalletActionType::OrSymbol,
          created_at: String,
          destination_currency: String,
          destination_fiat_account_id: String,
          destination_payment_rail: String,
          environment: Privy::Environment::OrSymbol,
          provider: Privy::OrchestrationProvider::OrSymbol,
          source_amount: String,
          source_asset: String,
          source_chain: String,
          status:
            Privy::WalletActionPayoutCreatedWebhookPayload::Status::OrSymbol,
          type: Privy::WalletActionPayoutCreatedWebhookPayload::Type::OrSymbol,
          wallet_action_id: String,
          wallet_id: String,
          reference_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Type of wallet action
        action_type:,
        # ISO 8601 timestamp of when the wallet action was created.
        created_at:,
        # The fiat currency the payout settles in (e.g. "usd").
        destination_currency:,
        # The registered external fiat account the payout settles to.
        destination_fiat_account_id:,
        # The fiat payment rail the payout settles over (e.g. "ach", "sepa", "wire").
        destination_payment_rail:,
        # The Privy API environment.
        environment:,
        # Supported fiat orchestration providers.
        provider:,
        # Decimal amount offramped, in the asset's standard units (e.g. "100.00").
        source_amount:,
        # Source crypto asset sent on-chain (e.g. "usdc").
        source_asset:,
        # Source chain the crypto was sent from (e.g. "base").
        source_chain:,
        # The status of the wallet action.
        status:,
        # The type of webhook event.
        type:,
        # The ID of the wallet action.
        wallet_action_id:,
        # The ID of the wallet involved in the action.
        wallet_id:,
        # Developer-provided reference ID, if one was included in the request.
        reference_id: nil
      )
      end

      sig do
        override.returns(
          {
            action_type: Privy::Wallets::WalletActionType::TaggedSymbol,
            created_at: String,
            destination_currency: String,
            destination_fiat_account_id: String,
            destination_payment_rail: String,
            environment: Privy::Environment::TaggedSymbol,
            provider: Privy::OrchestrationProvider::TaggedSymbol,
            source_amount: String,
            source_asset: String,
            source_chain: String,
            status:
              Privy::WalletActionPayoutCreatedWebhookPayload::Status::TaggedSymbol,
            type:
              Privy::WalletActionPayoutCreatedWebhookPayload::Type::TaggedSymbol,
            wallet_action_id: String,
            wallet_id: String,
            reference_id: T.nilable(String)
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
              Privy::WalletActionPayoutCreatedWebhookPayload::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Privy::WalletActionPayoutCreatedWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionPayoutCreatedWebhookPayload::Status::TaggedSymbol
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
            T.all(Symbol, Privy::WalletActionPayoutCreatedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_PAYOUT_CREATED =
          T.let(
            :"wallet_action.payout.created",
            Privy::WalletActionPayoutCreatedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionPayoutCreatedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
