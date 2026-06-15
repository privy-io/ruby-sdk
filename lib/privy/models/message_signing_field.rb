# frozen_string_literal: true

module Privy
  module Models
    # Supported fields for message signing conditions.
    module MessageSigningField
      extend Privy::Internal::Type::Enum

      CONTENT = :content
      BYTE_LENGTH = :byte_length

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
