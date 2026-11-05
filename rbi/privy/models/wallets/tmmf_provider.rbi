# typed: strong

module Privy
  module Models
    module Wallets
      # The fund provider.
      module TmmfProvider
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(Privy::Wallets::TmmfProvider::TaggedSymbol, String)
          end

        sig do
          override.returns(T::Array[Privy::Wallets::TmmfProvider::Variants])
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::Wallets::TmmfProvider) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WISDOMTREE =
          T.let(:wisdomtree, Privy::Wallets::TmmfProvider::TaggedSymbol)
      end
    end
  end
end
