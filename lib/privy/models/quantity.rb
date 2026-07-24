# frozen_string_literal: true

module Privy
  module Models
    # A quantity value that can be either a hex string starting with '0x' or a
    # non-negative integer.
    module Quantity
      extend Privy::Internal::Type::Union

      # A hex-encoded string prefixed with '0x', capped at 300002 characters (150,000 bytes).
      variant -> { Privy::Hex }

      variant Integer

      # @!method self.variants
      #   @return [Array(String, Integer)]
    end
  end
end
