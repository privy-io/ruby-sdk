# frozen_string_literal: true

module Privy
  module Models
    module BridgeSourceAsset
      extend Privy::Internal::Type::Enum

      USD = :usd
      EUR = :eur
      MXN = :mxn
      BRL = :brl
      GBP = :gbp

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
