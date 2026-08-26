# typed: strong

module Privy
  module Models
    # Which assets a deposit address accepts. Asset and chain use human-readable
    # aliases when known.
    module CryptoDepositAssetFilter
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::CryptoDepositAssetFilterAll,
            Privy::CryptoDepositAssetFilterInclude,
            Privy::CryptoDepositAssetFilterExclude
          )
        end

      sig do
        override.returns(T::Array[Privy::CryptoDepositAssetFilter::Variants])
      end
      def self.variants
      end
    end
  end
end
