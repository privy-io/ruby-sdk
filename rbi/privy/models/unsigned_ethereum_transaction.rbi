# typed: strong

module Privy
  module Models
    # An unsigned Ethereum transaction object. Supports standard EVM transaction types
    # (0, 1, 2, 4) and Tempo transactions (type 118).
    module UnsignedEthereumTransaction
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::UnsignedStandardEthereumTransaction,
            Privy::UnsignedTempoTransaction
          )
        end

      sig do
        override.returns(T::Array[Privy::UnsignedEthereumTransaction::Variants])
      end
      def self.variants
      end
    end
  end
end
