# frozen_string_literal: true

module Privy
  module Models
    # The entropy type of the wallet to import. Supports `private-key` for raw private
    # keys and `hd` for HD wallet seed phrases.
    module WalletImportSupportedEntropyTypes
      extend Privy::Internal::Type::Enum

      PRIVATE_KEY = :"private-key"
      HD = :hd

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
