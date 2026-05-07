# typed: strong

module Privy
  module Models
    class EmbeddedWalletCreationInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EmbeddedWalletCreationInput, Privy::Internal::AnyHash)
        end

      # Wallets to create.
      sig { returns(T.nilable(T::Array[Privy::WalletCreationInput])) }
      attr_reader :wallets

      sig { params(wallets: T::Array[Privy::WalletCreationInput::OrHash]).void }
      attr_writer :wallets

      # The fields describing embedded wallet creation, used for user import and
      # embedded wallet generation.
      sig do
        params(wallets: T::Array[Privy::WalletCreationInput::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # Wallets to create.
        wallets: nil
      )
      end

      sig do
        override.returns({ wallets: T::Array[Privy::WalletCreationInput] })
      end
      def to_hash
      end
    end
  end
end
