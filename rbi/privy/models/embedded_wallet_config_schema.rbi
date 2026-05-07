# typed: strong

module Privy
  module Models
    class EmbeddedWalletConfigSchema < Privy::Models::EmbeddedWalletInputSchema
      OrHash =
        T.type_alias do
          T.any(Privy::EmbeddedWalletConfigSchema, Privy::Internal::AnyHash)
        end

      # The mode for embedded wallets.
      sig { returns(Privy::EmbeddedWalletMode::TaggedSymbol) }
      attr_accessor :mode

      # Configuration for embedded wallets including the mode.
      sig do
        params(mode: Privy::EmbeddedWalletMode::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # The mode for embedded wallets.
        mode:
      )
      end

      sig do
        override.returns({ mode: Privy::EmbeddedWalletMode::TaggedSymbol })
      end
      def to_hash
      end
    end
  end
end
