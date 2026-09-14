# typed: strong

module Privy
  module Models
    # An EVM, Solana, or Tron CAIP-2 chain identifier supported by wallet automation
    # reindex.
    module WalletAutomationReindexCaip2
      extend Privy::Internal::Type::Union

      Variants = T.type_alias { T.any(String, Privy::TronCaip2::TaggedSymbol) }

      sig do
        override.returns(
          T::Array[Privy::WalletAutomationReindexCaip2::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
