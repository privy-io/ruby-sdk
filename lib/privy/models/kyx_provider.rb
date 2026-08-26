# frozen_string_literal: true

module Privy
  module Models
    # KYC/KYB provider identifier.
    module KyxProvider
      extend Privy::Internal::Type::Enum

      BRIDGE = :bridge

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
