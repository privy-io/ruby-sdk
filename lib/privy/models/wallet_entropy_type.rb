# frozen_string_literal: true

module Privy
  module Models
    # The entropy type of the wallet.
    module WalletEntropyType
      extend Privy::Internal::Type::Enum

      HD = :hd
      PRIVATE_KEY = :"private-key"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
