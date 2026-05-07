# frozen_string_literal: true

module Privy
  module Models
    # A Moonpay currency code for a Solana asset.
    module MoonpaySolanaCurrencyCode
      extend Privy::Internal::Type::Enum

      SOL = :SOL
      USDC_SOL = :USDC_SOL

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
