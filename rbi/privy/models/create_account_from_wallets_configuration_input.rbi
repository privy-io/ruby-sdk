# typed: strong

module Privy
  module Models
    class CreateAccountFromWalletsConfigurationInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateAccountFromWalletsConfigurationInput,
            Privy::Internal::AnyHash
          )
        end

      # Configuration for the wallets on this account.
      sig { returns(T::Array[Privy::AccountWalletConfigurationItem]) }
      attr_accessor :wallets_configuration

      # An optional display name for the account.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # Input for creating a digital asset account from new wallets with a
      # `wallets_configuration` specification.
      sig do
        params(
          wallets_configuration:
            T::Array[Privy::AccountWalletConfigurationItem::OrHash],
          display_name: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Configuration for the wallets on this account.
        wallets_configuration:,
        # An optional display name for the account.
        display_name: nil
      )
      end

      sig do
        override.returns(
          {
            wallets_configuration:
              T::Array[Privy::AccountWalletConfigurationItem],
            display_name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
