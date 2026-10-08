# typed: strong

module Privy
  module Models
    # Funds a card can spend, where `selected`, not list position, marks the one it
    # spends.
    module CardIssuingFundingSource
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::CardIssuingWalletFundingSource,
            Privy::CardIssuingErc4626VaultFundingSource,
            Privy::CardIssuingTempoEarnVaultFundingSource
          )
        end

      sig do
        override.returns(T::Array[Privy::CardIssuingFundingSource::Variants])
      end
      def self.variants
      end
    end
  end
end
