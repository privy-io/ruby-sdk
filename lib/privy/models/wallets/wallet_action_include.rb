# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Expandable relations to include on a wallet action response.
      module WalletActionInclude
        extend Privy::Internal::Type::Enum

        STEPS = :steps

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    WalletActionInclude = Wallets::WalletActionInclude
  end
end
