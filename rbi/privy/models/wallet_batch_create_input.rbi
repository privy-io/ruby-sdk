# typed: strong

module Privy
  module Models
    class WalletBatchCreateInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletBatchCreateInput, Privy::Internal::AnyHash)
        end

      # Array of wallet creation requests. Minimum 1, maximum 100.
      sig { returns(T::Array[Privy::WalletBatchItemInput]) }
      attr_accessor :wallets

      # Request body for batch wallet creation.
      sig do
        params(wallets: T::Array[Privy::WalletBatchItemInput::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # Array of wallet creation requests. Minimum 1, maximum 100.
        wallets:
      )
      end

      sig do
        override.returns({ wallets: T::Array[Privy::WalletBatchItemInput] })
      end
      def to_hash
      end
    end
  end
end
