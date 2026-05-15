# frozen_string_literal: true

module Privy
  module Models
    # A currency asset type.
    module CurrencyAsset
      extend Privy::Internal::Type::Enum

      NATIVE_CURRENCY = :"native-currency"
      USDC = :USDC

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
