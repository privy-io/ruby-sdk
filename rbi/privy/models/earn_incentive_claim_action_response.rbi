# typed: strong

module Privy
  module Models
    class EarnIncentiveClaimActionResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EarnIncentiveClaimActionResponse,
            Privy::Internal::AnyHash
          )
        end

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :id

      # EVM chain name (e.g. "base", "ethereum").
      sig { returns(String) }
      attr_accessor :chain

      # ISO 8601 timestamp of when the wallet action was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Claimed reward tokens. Populated after the preparation step fetches from Merkl.
      sig { returns(T.nilable(T::Array[Privy::EarnIncetiveClaimRewardEntry])) }
      attr_accessor :rewards

      # Status of a wallet action.
      sig { returns(Privy::WalletActionStatus::TaggedSymbol) }
      attr_accessor :status

      sig do
        returns(Privy::EarnIncentiveClaimActionResponse::Type::TaggedSymbol)
      end
      attr_accessor :type

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(T.nilable(Privy::FailureReason)) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # The steps of the wallet action. Only returned if `?include=steps` is provided.
      sig { returns(T.nilable(T::Array[Privy::WalletActionStep::Variants])) }
      attr_reader :steps

      sig do
        params(
          steps:
            T::Array[
              T.any(
                Privy::EvmTransactionWalletActionStep::OrHash,
                Privy::EvmUserOperationWalletActionStep::OrHash,
                Privy::SvmTransactionWalletActionStep::OrHash,
                Privy::ExternalTransactionWalletActionStep::OrHash
              )
            ]
        ).void
      end
      attr_writer :steps

      # Response for an earn incentive claim action.
      sig do
        params(
          id: String,
          chain: String,
          created_at: Time,
          rewards:
            T.nilable(T::Array[Privy::EarnIncetiveClaimRewardEntry::OrHash]),
          status: Privy::WalletActionStatus::OrSymbol,
          type: Privy::EarnIncentiveClaimActionResponse::Type::OrSymbol,
          wallet_id: String,
          failure_reason: Privy::FailureReason::OrHash,
          steps:
            T::Array[
              T.any(
                Privy::EvmTransactionWalletActionStep::OrHash,
                Privy::EvmUserOperationWalletActionStep::OrHash,
                Privy::SvmTransactionWalletActionStep::OrHash,
                Privy::ExternalTransactionWalletActionStep::OrHash
              )
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the wallet action.
        id:,
        # EVM chain name (e.g. "base", "ethereum").
        chain:,
        # ISO 8601 timestamp of when the wallet action was created.
        created_at:,
        # Claimed reward tokens. Populated after the preparation step fetches from Merkl.
        rewards:,
        # Status of a wallet action.
        status:,
        type:,
        # The ID of the wallet involved in the action.
        wallet_id:,
        # A description of why a wallet action (or a step within a wallet action) failed.
        failure_reason: nil,
        # The steps of the wallet action. Only returned if `?include=steps` is provided.
        steps: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            chain: String,
            created_at: Time,
            rewards: T.nilable(T::Array[Privy::EarnIncetiveClaimRewardEntry]),
            status: Privy::WalletActionStatus::TaggedSymbol,
            type: Privy::EarnIncentiveClaimActionResponse::Type::TaggedSymbol,
            wallet_id: String,
            failure_reason: Privy::FailureReason,
            steps: T::Array[Privy::WalletActionStep::Variants]
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EarnIncentiveClaimActionResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EARN_INCENTIVE_CLAIM =
          T.let(
            :earn_incentive_claim,
            Privy::EarnIncentiveClaimActionResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EarnIncentiveClaimActionResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
