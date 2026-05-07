# typed: strong

module Privy
  module Models
    class UpdateAccountFromWalletsConfigurationInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::UpdateAccountFromWalletsConfigurationInput,
            Privy::Internal::AnyHash
          )
        end

      # An optional display name for the account.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # Configuration for the wallets on this account.
      sig do
        returns(T.nilable(T::Array[Privy::AccountWalletConfigurationItem]))
      end
      attr_reader :wallets_configuration

      sig do
        params(
          wallets_configuration:
            T::Array[Privy::AccountWalletConfigurationItem::OrHash]
        ).void
      end
      attr_writer :wallets_configuration

      # Input for updating a digital asset account with a `wallets_configuration`
      # specification.
      sig do
        params(
          display_name: String,
          wallets_configuration:
            T::Array[Privy::AccountWalletConfigurationItem::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # An optional display name for the account.
        display_name: nil,
        # Configuration for the wallets on this account.
        wallets_configuration: nil
      )
      end

      sig do
        override.returns(
          {
            display_name: String,
            wallets_configuration:
              T::Array[Privy::AccountWalletConfigurationItem]
          }
        )
      end
      def to_hash
      end
    end
  end
end
