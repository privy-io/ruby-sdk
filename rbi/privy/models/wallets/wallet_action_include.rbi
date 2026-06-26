# typed: strong

module Privy
  module Models
    WalletActionInclude = Wallets::WalletActionInclude

    module Wallets
      # Expandable relations to include on a wallet action response.
      module WalletActionInclude
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::Wallets::WalletActionInclude) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STEPS = T.let(:steps, Privy::Wallets::WalletActionInclude::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::Wallets::WalletActionInclude::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
