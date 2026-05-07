# frozen_string_literal: true

module Privy
  module Models
    # The supported smart wallet providers.
    module SmartWalletType
      extend Privy::Internal::Type::Enum

      SAFE = :safe
      KERNEL = :kernel
      LIGHT_ACCOUNT = :light_account
      BICONOMY = :biconomy
      COINBASE_SMART_WALLET = :coinbase_smart_wallet
      THIRDWEB = :thirdweb
      NEXUS = :nexus

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
