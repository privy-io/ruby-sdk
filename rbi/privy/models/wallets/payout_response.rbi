# typed: strong

module Privy
  module Models
    module Wallets
      class PayoutResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Privy::Wallets::PayoutResponse, Privy::Internal::AnyHash)
          end

        # The ID of the wallet action.
        sig { returns(String) }
        attr_accessor :id

        # ISO 8601 timestamp of when the wallet action was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The destination bank account for a payout.
        sig { returns(Privy::PayoutDestination) }
        attr_reader :destination

        sig { params(destination: Privy::PayoutDestination::OrHash).void }
        attr_writer :destination

        # The Privy API environment.
        sig { returns(Privy::Environment::TaggedSymbol) }
        attr_accessor :environment

        # Supported fiat orchestration providers.
        sig { returns(Privy::OrchestrationProvider::TaggedSymbol) }
        attr_accessor :provider

        # The source crypto asset, chain, and amount for a payout.
        sig { returns(Privy::PayoutSource) }
        attr_reader :source

        sig { params(source: Privy::PayoutSource::OrHash).void }
        attr_writer :source

        # Status of a wallet action.
        sig { returns(Privy::Wallets::WalletActionStatus::TaggedSymbol) }
        attr_accessor :status

        sig { returns(Privy::Wallets::PayoutResponse::Type::TaggedSymbol) }
        attr_accessor :type

        # The ID of the wallet involved in the action.
        sig { returns(String) }
        attr_accessor :wallet_id

        # A description of why a wallet action (or a step within a wallet action) failed.
        sig { returns(T.nilable(Privy::Wallets::FailureReason)) }
        attr_reader :failure_reason

        sig do
          params(failure_reason: Privy::Wallets::FailureReason::OrHash).void
        end
        attr_writer :failure_reason

        # The steps of the wallet action. Only returned if `?include=steps` is provided.
        sig do
          returns(
            T.nilable(T::Array[Privy::Wallets::WalletActionStep::Variants])
          )
        end
        attr_reader :steps

        sig do
          params(
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
              ]
          ).void
        end
        attr_writer :steps

        # A payout wallet action. Crypto is sent on-chain to a liquidation address that
        # offramps to the destination bank account.
        sig do
          params(
            id: String,
            created_at: Time,
            destination: Privy::PayoutDestination::OrHash,
            environment: Privy::Environment::OrSymbol,
            provider: Privy::OrchestrationProvider::OrSymbol,
            source: Privy::PayoutSource::OrHash,
            status: Privy::Wallets::WalletActionStatus::OrSymbol,
            type: Privy::Wallets::PayoutResponse::Type::OrSymbol,
            wallet_id: String,
            failure_reason: Privy::Wallets::FailureReason::OrHash,
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
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the wallet action.
          id:,
          # ISO 8601 timestamp of when the wallet action was created.
          created_at:,
          # The destination bank account for a payout.
          destination:,
          # The Privy API environment.
          environment:,
          # Supported fiat orchestration providers.
          provider:,
          # The source crypto asset, chain, and amount for a payout.
          source:,
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
              created_at: Time,
              destination: Privy::PayoutDestination,
              environment: Privy::Environment::TaggedSymbol,
              provider: Privy::OrchestrationProvider::TaggedSymbol,
              source: Privy::PayoutSource,
              status: Privy::Wallets::WalletActionStatus::TaggedSymbol,
              type: Privy::Wallets::PayoutResponse::Type::TaggedSymbol,
              wallet_id: String,
              failure_reason: Privy::Wallets::FailureReason,
              steps: T::Array[Privy::Wallets::WalletActionStep::Variants]
            }
          )
        end
        def to_hash
        end

        module Type
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Privy::Wallets::PayoutResponse::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAYOUT =
            T.let(:payout, Privy::Wallets::PayoutResponse::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Privy::Wallets::PayoutResponse::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
