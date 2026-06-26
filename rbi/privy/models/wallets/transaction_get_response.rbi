# typed: strong

module Privy
  module Models
    module Wallets
      class TransactionGetResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Models::Wallets::TransactionGetResponse,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :next_cursor

        sig do
          returns(
            T::Array[
              Privy::Models::Wallets::TransactionGetResponse::Transaction
            ]
          )
        end
        attr_accessor :transactions

        sig do
          params(
            next_cursor: T.nilable(String),
            transactions:
              T::Array[
                Privy::Models::Wallets::TransactionGetResponse::Transaction::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(next_cursor:, transactions:)
        end

        sig do
          override.returns(
            {
              next_cursor: T.nilable(String),
              transactions:
                T::Array[
                  Privy::Models::Wallets::TransactionGetResponse::Transaction
                ]
            }
          )
        end
        def to_hash
        end

        class Transaction < Privy::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Privy::Models::Wallets::TransactionGetResponse::Transaction,
                Privy::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :caip2

          sig { returns(Float) }
          attr_accessor :created_at

          # Details of a wallet transaction, varying by transaction type.
          sig do
            returns(
              Privy::Models::Wallets::TransactionGetResponse::Transaction::Details
            )
          end
          attr_reader :details

          sig do
            params(
              details:
                Privy::Models::Wallets::TransactionGetResponse::Transaction::Details::OrHash
            ).void
          end
          attr_writer :details

          sig { returns(String) }
          attr_accessor :privy_transaction_id

          # Status of a blockchain transaction submitted by Privy.
          sig { returns(Privy::BlockchainTransactionStatus::TaggedSymbol) }
          attr_accessor :status

          sig { returns(T.nilable(String)) }
          attr_accessor :transaction_hash

          sig { returns(String) }
          attr_accessor :wallet_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :sponsored

          sig { params(sponsored: T::Boolean).void }
          attr_writer :sponsored

          sig { returns(T.nilable(String)) }
          attr_reader :user_operation_hash

          sig { params(user_operation_hash: String).void }
          attr_writer :user_operation_hash

          sig do
            params(
              caip2: String,
              created_at: Float,
              details:
                Privy::Models::Wallets::TransactionGetResponse::Transaction::Details::OrHash,
              privy_transaction_id: String,
              status: Privy::BlockchainTransactionStatus::OrSymbol,
              transaction_hash: T.nilable(String),
              wallet_id: String,
              sponsored: T::Boolean,
              user_operation_hash: String
            ).returns(T.attached_class)
          end
          def self.new(
            caip2:,
            created_at:,
            # Details of a wallet transaction, varying by transaction type.
            details:,
            privy_transaction_id:,
            # Status of a blockchain transaction submitted by Privy.
            status:,
            transaction_hash:,
            wallet_id:,
            sponsored: nil,
            user_operation_hash: nil
          )
          end

          sig do
            override.returns(
              {
                caip2: String,
                created_at: Float,
                details:
                  Privy::Models::Wallets::TransactionGetResponse::Transaction::Details,
                privy_transaction_id: String,
                status: Privy::BlockchainTransactionStatus::TaggedSymbol,
                transaction_hash: T.nilable(String),
                wallet_id: String,
                sponsored: T::Boolean,
                user_operation_hash: String
              }
            )
          end
          def to_hash
          end

          class Details < Privy::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Privy::Models::Wallets::TransactionGetResponse::Transaction::Details,
                  Privy::Internal::AnyHash
                )
              end

            # Details of a wallet transaction, varying by transaction type.
            sig { returns(T.attached_class) }
            def self.new
            end

            sig { override.returns({}) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
