# typed: strong

module Privy
  module Models
    # The source asset, amount, and chain for a token transfer. Specify either `asset`
    # (named) or `asset_address` (custom), not both.
    module TokenTransferSource
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::NamedTokenTransferSource,
            Privy::CustomTokenTransferSource
          )
        end

      sig { override.returns(T::Array[Privy::TokenTransferSource::Variants]) }
      def self.variants
      end
    end
  end
end
