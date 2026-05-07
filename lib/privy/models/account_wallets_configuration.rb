# frozen_string_literal: true

module Privy
  module Models
    # @type [Privy::Internal::Type::Converter]
    AccountWalletsConfiguration =
      Privy::Internal::Type::ArrayOf[-> { Privy::AccountWalletConfigurationItem }]
  end
end
