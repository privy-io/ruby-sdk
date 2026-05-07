# typed: strong

module Privy
  module Models
    class EmbeddedWalletChainConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EmbeddedWalletChainConfig, Privy::Internal::AnyHash)
        end

      # Whether to create embedded wallets on login.
      sig { returns(Privy::EmbeddedWalletCreateOnLogin::TaggedSymbol) }
      attr_accessor :create_on_login

      # Chain-specific configuration for embedded wallets.
      sig do
        params(
          create_on_login: Privy::EmbeddedWalletCreateOnLogin::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether to create embedded wallets on login.
        create_on_login:
      )
      end

      sig do
        override.returns(
          { create_on_login: Privy::EmbeddedWalletCreateOnLogin::TaggedSymbol }
        )
      end
      def to_hash
      end
    end
  end
end
