# typed: strong

module Privy
  module Models
    # A single result from a batch wallet creation operation.
    module WalletBatchCreateResult
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::WalletBatchCreateResult::WalletBatchCreateSuccess,
            Privy::WalletBatchCreateResult::WalletBatchCreateFailure
          )
        end

      class WalletBatchCreateSuccess < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::WalletBatchCreateResult::WalletBatchCreateSuccess,
              Privy::Internal::AnyHash
            )
          end

        # The index of the wallet in the original request array.
        sig { returns(Float) }
        attr_accessor :index

        sig do
          returns(
            Privy::WalletBatchCreateResult::WalletBatchCreateSuccess::Success::OrBoolean
          )
        end
        attr_accessor :success

        # A wallet managed by Privy's wallet infrastructure.
        sig { returns(Privy::Wallet) }
        attr_reader :wallet

        sig { params(wallet: Privy::Wallet::OrHash).void }
        attr_writer :wallet

        # A successful wallet creation result within a batch operation.
        sig do
          params(
            index: Float,
            success:
              Privy::WalletBatchCreateResult::WalletBatchCreateSuccess::Success::OrBoolean,
            wallet: Privy::Wallet::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The index of the wallet in the original request array.
          index:,
          success:,
          # A wallet managed by Privy's wallet infrastructure.
          wallet:
        )
        end

        sig do
          override.returns(
            {
              index: Float,
              success:
                Privy::WalletBatchCreateResult::WalletBatchCreateSuccess::Success::OrBoolean,
              wallet: Privy::Wallet
            }
          )
        end
        def to_hash
        end

        module Success
          extend Privy::Internal::Type::Enum

          TaggedBoolean =
            T.type_alias do
              T.all(
                T::Boolean,
                Privy::WalletBatchCreateResult::WalletBatchCreateSuccess::Success
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Privy::WalletBatchCreateResult::WalletBatchCreateSuccess::Success::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Privy::WalletBatchCreateResult::WalletBatchCreateSuccess::Success::TaggedBoolean
              ]
            )
          end
          def self.values
          end
        end
      end

      class WalletBatchCreateFailure < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::WalletBatchCreateResult::WalletBatchCreateFailure,
              Privy::Internal::AnyHash
            )
          end

        # A PrivyErrorCode string identifying the error type (e.g., "invalid_data",
        # "resource_conflict").
        sig { returns(String) }
        attr_accessor :code

        # A human-readable error message with details about what went wrong.
        sig { returns(String) }
        attr_accessor :error

        # The index of the wallet in the original request array.
        sig { returns(Float) }
        attr_accessor :index

        sig do
          returns(
            Privy::WalletBatchCreateResult::WalletBatchCreateFailure::Success::OrBoolean
          )
        end
        attr_accessor :success

        # A failed wallet creation result within a batch operation.
        sig do
          params(
            code: String,
            error: String,
            index: Float,
            success:
              Privy::WalletBatchCreateResult::WalletBatchCreateFailure::Success::OrBoolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A PrivyErrorCode string identifying the error type (e.g., "invalid_data",
          # "resource_conflict").
          code:,
          # A human-readable error message with details about what went wrong.
          error:,
          # The index of the wallet in the original request array.
          index:,
          success:
        )
        end

        sig do
          override.returns(
            {
              code: String,
              error: String,
              index: Float,
              success:
                Privy::WalletBatchCreateResult::WalletBatchCreateFailure::Success::OrBoolean
            }
          )
        end
        def to_hash
        end

        module Success
          extend Privy::Internal::Type::Enum

          TaggedBoolean =
            T.type_alias do
              T.all(
                T::Boolean,
                Privy::WalletBatchCreateResult::WalletBatchCreateFailure::Success
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          FALSE =
            T.let(
              false,
              Privy::WalletBatchCreateResult::WalletBatchCreateFailure::Success::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Privy::WalletBatchCreateResult::WalletBatchCreateFailure::Success::TaggedBoolean
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(T::Array[Privy::WalletBatchCreateResult::Variants])
      end
      def self.variants
      end
    end
  end
end
