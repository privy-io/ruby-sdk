# typed: strong

module Privy
  module Models
    # A quantity value that can be either a hex string starting with '0x' or a
    # non-negative integer.
    module Quantity
      extend Privy::Internal::Type::Union

      Variants = T.type_alias { T.any(String, Integer) }

      sig { override.returns(T::Array[Privy::Quantity::Variants]) }
      def self.variants
      end
    end
  end
end
