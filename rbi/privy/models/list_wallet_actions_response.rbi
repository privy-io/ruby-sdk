# typed: strong

module Privy
  module Models
    class ListWalletActionsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ListWalletActionsResponse, Privy::Internal::AnyHash)
        end

      sig do
        returns(
          T::Array[
            T.any(
              Privy::SwapActionResponse,
              Privy::TransferActionResponse,
              Privy::EarnDepositActionResponse,
              Privy::EarnWithdrawActionResponse,
              Privy::EarnIncentiveClaimActionResponse
            )
          ]
        )
      end
      attr_accessor :data

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # Paginated list of wallet actions.
      sig do
        params(
          data:
            T::Array[
              T.any(
                Privy::SwapActionResponse::OrHash,
                Privy::TransferActionResponse::OrHash,
                Privy::EarnDepositActionResponse::OrHash,
                Privy::EarnWithdrawActionResponse::OrHash,
                Privy::EarnIncentiveClaimActionResponse::OrHash
              )
            ],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(data:, next_cursor:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                T.any(
                  Privy::SwapActionResponse,
                  Privy::TransferActionResponse,
                  Privy::EarnDepositActionResponse,
                  Privy::EarnWithdrawActionResponse,
                  Privy::EarnIncentiveClaimActionResponse
                )
              ],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
