# typed: strong

module Privy
  module Models
    class WalletActionEarnIncentiveClaimSucceededWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Type of wallet action
      sig { returns(Privy::Wallets::WalletActionType::TaggedSymbol) }
      attr_accessor :action_type

      # EVM chain name (e.g. "tempo", "base").
      sig { returns(String) }
      attr_accessor :chain

      # ISO 8601 timestamp of when the wallet action completed successfully.
      sig { returns(String) }
      attr_accessor :completed_at

      # ISO 8601 timestamp of when the wallet action was created.
      sig { returns(String) }
      attr_accessor :created_at

      # Claimed reward tokens. Populated after the preparation step fetches from Merkl.
      sig do
        returns(
          T.nilable(T::Array[Privy::Wallets::EarnIncetiveClaimRewardEntry])
        )
      end
      attr_accessor :rewards

      # The status of the wallet action.
      sig do
        returns(
          Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The steps of the wallet action, including transaction hashes.
      sig { returns(T::Array[Privy::Wallets::WalletActionStep::Variants]) }
      attr_accessor :steps

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :wallet_action_id

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Payload for the wallet_action.earn_incentive_claim.succeeded webhook event.
      sig do
        params(
          action_type: Privy::Wallets::WalletActionType::OrSymbol,
          chain: String,
          completed_at: String,
          created_at: String,
          rewards:
            T.nilable(
              T::Array[Privy::Wallets::EarnIncetiveClaimRewardEntry::OrHash]
            ),
          status:
            Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload::Status::OrSymbol,
          steps:
            T::Array[
              T.any(
                Privy::Wallets::EvmTransactionWalletActionStep::OrHash,
                Privy::Wallets::EvmUserOperationWalletActionStep::OrHash,
                Privy::Wallets::SvmTransactionWalletActionStep::OrHash,
                Privy::Wallets::TvmTransactionWalletActionStep::OrHash,
                Privy::Wallets::ExternalTransactionWalletActionStep::OrHash,
                Privy::Wallets::CustodianTransactionWalletActionStep::OrHash
              )
            ],
          type:
            Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload::Type::OrSymbol,
          wallet_action_id: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Type of wallet action
        action_type:,
        # EVM chain name (e.g. "tempo", "base").
        chain:,
        # ISO 8601 timestamp of when the wallet action completed successfully.
        completed_at:,
        # ISO 8601 timestamp of when the wallet action was created.
        created_at:,
        # Claimed reward tokens. Populated after the preparation step fetches from Merkl.
        rewards:,
        # The status of the wallet action.
        status:,
        # The steps of the wallet action, including transaction hashes.
        steps:,
        # The type of webhook event.
        type:,
        # The ID of the wallet action.
        wallet_action_id:,
        # The ID of the wallet involved in the action.
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            action_type: Privy::Wallets::WalletActionType::TaggedSymbol,
            chain: String,
            completed_at: String,
            created_at: String,
            rewards:
              T.nilable(T::Array[Privy::Wallets::EarnIncetiveClaimRewardEntry]),
            status:
              Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload::Status::TaggedSymbol,
            steps: T::Array[Privy::Wallets::WalletActionStep::Variants],
            type:
              Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload::Type::TaggedSymbol,
            wallet_action_id: String,
            wallet_id: String
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
              Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUCCEEDED =
          T.let(
            :succeeded,
            Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload::Status::TaggedSymbol
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
              Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_EARN_INCENTIVE_CLAIM_SUCCEEDED =
          T.let(
            :"wallet_action.earn_incentive_claim.succeeded",
            Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
