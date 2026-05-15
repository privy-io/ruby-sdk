# frozen_string_literal: true

module Privy
  module Models
    module CustomMetadataItem
      extend Privy::Internal::Type::Union

      variant String

      variant Float

      variant Privy::Internal::Type::Boolean

      # @!method self.variants
      #   @return [Array(String, Float, Boolean)]
    end

    # @type [Privy::Internal::Type::Converter]
    CustomMetadata = Privy::Internal::Type::HashOf[union: -> { Privy::CustomMetadataItem }]
  end
end
