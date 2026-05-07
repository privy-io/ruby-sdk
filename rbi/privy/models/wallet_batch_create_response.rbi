# typed: strong

module Privy
  module Models
    class WalletBatchCreateResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletBatchCreateResponse, Privy::Internal::AnyHash)
        end

      # Array of results for each wallet creation request, in the same order as input.
      sig do
        returns(
          T::Array[
            T.any(
              Privy::WalletBatchCreateResult::WalletBatchCreateSuccess,
              Privy::WalletBatchCreateResult::WalletBatchCreateFailure
            )
          ]
        )
      end
      attr_accessor :results

      # Response for a batch wallet creation request.
      sig do
        params(
          results:
            T::Array[
              T.any(
                Privy::WalletBatchCreateResult::WalletBatchCreateSuccess::OrHash,
                Privy::WalletBatchCreateResult::WalletBatchCreateFailure::OrHash
              )
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of results for each wallet creation request, in the same order as input.
        results:
      )
      end

      sig do
        override.returns(
          {
            results:
              T::Array[
                T.any(
                  Privy::WalletBatchCreateResult::WalletBatchCreateSuccess,
                  Privy::WalletBatchCreateResult::WalletBatchCreateFailure
                )
              ]
          }
        )
      end
      def to_hash
      end
    end
  end
end
