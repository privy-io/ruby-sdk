# typed: strong

module Privy
  module Models
    class WalletCreateWalletsWithRecoveryResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletCreateWalletsWithRecoveryResponse,
            Privy::Internal::AnyHash
          )
        end

      # The ID of the created user.
      sig { returns(String) }
      attr_accessor :recovery_user_id

      # The wallets that were created.
      sig { returns(T::Array[Privy::Wallet]) }
      attr_accessor :wallets

      # The response from creating wallets with an associated recovery user.
      sig do
        params(
          recovery_user_id: String,
          wallets: T::Array[Privy::Wallet::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the created user.
        recovery_user_id:,
        # The wallets that were created.
        wallets:
      )
      end

      sig do
        override.returns(
          { recovery_user_id: String, wallets: T::Array[Privy::Wallet] }
        )
      end
      def to_hash
      end
    end
  end
end
