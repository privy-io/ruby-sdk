# frozen_string_literal: true

module Privy
  module Models
    # The type of wallet linked account (external wallet or smart wallet).
    module LinkedAccountBaseWalletType
      extend Privy::Internal::Type::Enum

      WALLET = :wallet
      SMART_WALLET = :smart_wallet

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
