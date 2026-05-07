# frozen_string_literal: true

module Privy
  module Models
    # The fiat onramp provider to use.
    module FiatOnrampProvider
      extend Privy::Internal::Type::Enum

      MELD = :meld
      MELD_SANDBOX = :"meld-sandbox"
      MOONPAY = :moonpay
      MOONPAY_SANDBOX = :"moonpay-sandbox"
      COINBASE = :coinbase
      COINBASE_SANDBOX = :"coinbase-sandbox"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
