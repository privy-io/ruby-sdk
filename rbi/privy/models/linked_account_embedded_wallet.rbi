# typed: strong

module Privy
  module Models
    # A linked embedded wallet account across all supported chain types.
    module LinkedAccountEmbeddedWallet
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::LinkedAccountEthereumEmbeddedWallet,
            Privy::LinkedAccountSolanaEmbeddedWallet,
            Privy::LinkedAccountBitcoinSegwitEmbeddedWallet,
            Privy::LinkedAccountBitcoinTaprootEmbeddedWallet,
            Privy::LinkedAccountCurveSigningEmbeddedWallet
          )
        end

      sig do
        override.returns(T::Array[Privy::LinkedAccountEmbeddedWallet::Variants])
      end
      def self.variants
      end
    end
  end
end
