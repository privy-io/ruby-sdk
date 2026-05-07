# typed: strong

module Privy
  module Models
    # The entropy type of the wallet to import. Supports `private-key` for raw private
    # keys and `hd` for HD wallet seed phrases.
    module WalletImportSupportedEntropyTypes
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::WalletImportSupportedEntropyTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PRIVATE_KEY =
        T.let(
          :"private-key",
          Privy::WalletImportSupportedEntropyTypes::TaggedSymbol
        )
      HD = T.let(:hd, Privy::WalletImportSupportedEntropyTypes::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::WalletImportSupportedEntropyTypes::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
