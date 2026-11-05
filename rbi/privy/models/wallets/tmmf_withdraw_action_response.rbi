# typed: strong

module Privy
  module Models
    module Wallets
      class TmmfWithdrawActionResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::TmmfWithdrawActionResponse,
              Privy::Internal::AnyHash
            )
          end

        # The ID of the wallet action.
        sig { returns(String) }
        attr_accessor :id

        # ISO 8601 timestamp of when the wallet action was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Status of a wallet action.
        sig { returns(Privy::Wallets::WalletActionStatus::TaggedSymbol) }
        attr_accessor :status

        sig do
          returns(
            Privy::Wallets::TmmfWithdrawActionResponse::Type::TaggedSymbol
          )
        end
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

        # Developer-provided reference ID, if one was included in the request.
        sig { returns(T.nilable(String)) }
        attr_accessor :reference_id

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
                  Privy::Wallets::CustodianTransactionWalletActionStep::OrHash,
                  Privy::Wallets::TempoZoneSettlementWalletActionStep::OrHash,
                  Privy::Wallets::WisdomTreeSettlementWalletActionStep::OrHash
                )
              ]
          ).void
        end
        attr_writer :steps

        # A tokenized money market fund (tMMF) withdrawal.
        sig do
          params(
            id: String,
            created_at: Time,
            status: Privy::Wallets::WalletActionStatus::OrSymbol,
            type: Privy::Wallets::TmmfWithdrawActionResponse::Type::OrSymbol,
            wallet_id: String,
            failure_reason: Privy::Wallets::FailureReason::OrHash,
            reference_id: T.nilable(String),
            steps:
              T::Array[
                T.any(
                  Privy::Wallets::EvmTransactionWalletActionStep::OrHash,
                  Privy::Wallets::EvmUserOperationWalletActionStep::OrHash,
                  Privy::Wallets::SvmTransactionWalletActionStep::OrHash,
                  Privy::Wallets::TvmTransactionWalletActionStep::OrHash,
                  Privy::Wallets::ExternalTransactionWalletActionStep::OrHash,
                  Privy::Wallets::CustodianTransactionWalletActionStep::OrHash,
                  Privy::Wallets::TempoZoneSettlementWalletActionStep::OrHash,
                  Privy::Wallets::WisdomTreeSettlementWalletActionStep::OrHash
                )
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the wallet action.
          id:,
          # ISO 8601 timestamp of when the wallet action was created.
          created_at:,
          # Status of a wallet action.
          status:,
          type:,
          # The ID of the wallet involved in the action.
          wallet_id:,
          # A description of why a wallet action (or a step within a wallet action) failed.
          failure_reason: nil,
          # Developer-provided reference ID, if one was included in the request.
          reference_id: nil,
          # The steps of the wallet action. Only returned if `?include=steps` is provided.
          steps: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              status: Privy::Wallets::WalletActionStatus::TaggedSymbol,
              type:
                Privy::Wallets::TmmfWithdrawActionResponse::Type::TaggedSymbol,
              wallet_id: String,
              failure_reason: Privy::Wallets::FailureReason,
              reference_id: T.nilable(String),
              steps: T::Array[Privy::Wallets::WalletActionStep::Variants]
            }
          )
        end
        def to_hash
        end

        module Type
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Privy::Wallets::TmmfWithdrawActionResponse::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TMMF_WITHDRAW =
            T.let(
              :tmmf_withdraw,
              Privy::Wallets::TmmfWithdrawActionResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Wallets::TmmfWithdrawActionResponse::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
