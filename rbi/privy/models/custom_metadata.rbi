# typed: strong

module Privy
  module Models
    module CustomMetadataItem
      extend Privy::Internal::Type::Union

      Variants = T.type_alias { T.any(String, Float, T::Boolean) }

      sig { override.returns(T::Array[Privy::CustomMetadataItem::Variants]) }
      def self.variants
      end
    end

    CustomMetadata =
      T.let(
        Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem],
        Privy::Internal::Type::Converter
      )
  end
end
