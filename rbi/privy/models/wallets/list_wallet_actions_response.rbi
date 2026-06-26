# typed: strong

module Privy
  module Models
    module Wallets
      class ListWalletActionsResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::ListWalletActionsResponse,
              Privy::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              T.any(
                Privy::Wallets::SwapActionResponse,
                Privy::Wallets::TransferActionResponse,
                Privy::Wallets::EarnDepositActionResponse,
                Privy::Wallets::EarnWithdrawActionResponse,
                Privy::Wallets::EarnIncentiveClaimActionResponse
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
                  Privy::Wallets::SwapActionResponse::OrHash,
                  Privy::Wallets::TransferActionResponse::OrHash,
                  Privy::Wallets::EarnDepositActionResponse::OrHash,
                  Privy::Wallets::EarnWithdrawActionResponse::OrHash,
                  Privy::Wallets::EarnIncentiveClaimActionResponse::OrHash
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
                    Privy::Wallets::SwapActionResponse,
                    Privy::Wallets::TransferActionResponse,
                    Privy::Wallets::EarnDepositActionResponse,
                    Privy::Wallets::EarnWithdrawActionResponse,
                    Privy::Wallets::EarnIncentiveClaimActionResponse
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
end
