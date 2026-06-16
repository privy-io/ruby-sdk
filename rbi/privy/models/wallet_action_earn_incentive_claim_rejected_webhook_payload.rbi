# typed: strong

module Privy
  module Models
    class WalletActionEarnIncentiveClaimRejectedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Type of wallet action
      sig { returns(Privy::WalletActionType::TaggedSymbol) }
      attr_accessor :action_type

      # EVM chain name (e.g. "base", "ethereum").
      sig { returns(String) }
      attr_accessor :chain

      # ISO 8601 timestamp of when the wallet action was created.
      sig { returns(String) }
      attr_accessor :created_at

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(Privy::FailureReason) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # ISO 8601 timestamp of when the wallet action was rejected.
      sig { returns(String) }
      attr_accessor :rejected_at

      # Claimed reward tokens. Populated after the preparation step fetches from Merkl.
      sig { returns(T.nilable(T::Array[Privy::EarnIncetiveClaimRewardEntry])) }
      attr_accessor :rewards

      # The status of the wallet action.
      sig do
        returns(
          Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The steps of the wallet action at the time of rejection.
      sig { returns(T::Array[Privy::WalletActionStep::Variants]) }
      attr_accessor :steps

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :wallet_action_id

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Payload for the wallet_action.earn_incentive_claim.rejected webhook event.
      sig do
        params(
          action_type: Privy::WalletActionType::OrSymbol,
          chain: String,
          created_at: String,
          failure_reason: Privy::FailureReason::OrHash,
          rejected_at: String,
          rewards:
            T.nilable(T::Array[Privy::EarnIncetiveClaimRewardEntry::OrHash]),
          status:
            Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload::Status::OrSymbol,
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
            Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload::Type::OrSymbol,
          wallet_action_id: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Type of wallet action
        action_type:,
        # EVM chain name (e.g. "base", "ethereum").
        chain:,
        # ISO 8601 timestamp of when the wallet action was created.
        created_at:,
        # A description of why a wallet action (or a step within a wallet action) failed.
        failure_reason:,
        # ISO 8601 timestamp of when the wallet action was rejected.
        rejected_at:,
        # Claimed reward tokens. Populated after the preparation step fetches from Merkl.
        rewards:,
        # The status of the wallet action.
        status:,
        # The steps of the wallet action at the time of rejection.
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
            action_type: Privy::WalletActionType::TaggedSymbol,
            chain: String,
            created_at: String,
            failure_reason: Privy::FailureReason,
            rejected_at: String,
            rewards: T.nilable(T::Array[Privy::EarnIncetiveClaimRewardEntry]),
            status:
              Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload::Status::TaggedSymbol,
            steps: T::Array[Privy::WalletActionStep::Variants],
            type:
              Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload::Type::TaggedSymbol,
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
              Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REJECTED =
          T.let(
            :rejected,
            Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload::Status::TaggedSymbol
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
              Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_EARN_INCENTIVE_CLAIM_REJECTED =
          T.let(
            :"wallet_action.earn_incentive_claim.rejected",
            Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
