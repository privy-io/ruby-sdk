# frozen_string_literal: true

module Privy
  module Models
    # @type [Privy::Internal::Type::Converter]
    WalletAdditionalSigner = Privy::Internal::Type::ArrayOf[-> { Privy::WalletAdditionalSignerItem }]
  end
end
