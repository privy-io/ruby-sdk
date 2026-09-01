# typed: strong

module Privy
  module Models
    class ListActions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::ListActions, Privy::Internal::AnyHash) }

      sig do
        returns(
          T::Array[
            T.any(
              Privy::Wallets::SwapActionResponse,
              Privy::Wallets::TransferActionResponse,
              Privy::Wallets::EarnDepositActionResponse,
              Privy::Wallets::EarnWithdrawActionResponse,
              Privy::Wallets::EarnIncentiveClaimActionResponse,
              Privy::Wallets::EarnFeeCollectActionResponse,
              Privy::Wallets::PayoutResponse
            )
          ]
        )
      end
      attr_accessor :actions

      # A list of wallet actions.
      sig do
        params(
          actions:
            T::Array[
              T.any(
                Privy::Wallets::SwapActionResponse::OrHash,
                Privy::Wallets::TransferActionResponse::OrHash,
                Privy::Wallets::EarnDepositActionResponse::OrHash,
                Privy::Wallets::EarnWithdrawActionResponse::OrHash,
                Privy::Wallets::EarnIncentiveClaimActionResponse::OrHash,
                Privy::Wallets::EarnFeeCollectActionResponse::OrHash,
                Privy::Wallets::PayoutResponse::OrHash
              )
            ]
        ).returns(T.attached_class)
      end
      def self.new(actions:)
      end

      sig do
        override.returns(
          {
            actions:
              T::Array[
                T.any(
                  Privy::Wallets::SwapActionResponse,
                  Privy::Wallets::TransferActionResponse,
                  Privy::Wallets::EarnDepositActionResponse,
                  Privy::Wallets::EarnWithdrawActionResponse,
                  Privy::Wallets::EarnIncentiveClaimActionResponse,
                  Privy::Wallets::EarnFeeCollectActionResponse,
                  Privy::Wallets::PayoutResponse
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
