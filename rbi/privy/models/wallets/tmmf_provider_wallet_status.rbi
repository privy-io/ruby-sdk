# typed: strong

module Privy
  module Models
    module Wallets
      # A registered wallet's status with its tMMF provider, read live from the
      # provider.
      module TmmfProviderWalletStatus
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::Wallets::TmmfProviderWalletStatus::TaggedSymbol,
              String
            )
          end

        sig do
          override.returns(
            T::Array[Privy::Wallets::TmmfProviderWalletStatus::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::Wallets::TmmfProviderWalletStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED =
          T.let(
            :created,
            Privy::Wallets::TmmfProviderWalletStatus::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            Privy::Wallets::TmmfProviderWalletStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Privy::Wallets::TmmfProviderWalletStatus::TaggedSymbol
          )
      end
    end
  end
end
