# typed: strong

module Privy
  module Models
    AccountWalletsConfiguration =
      T.let(
        Privy::Internal::Type::ArrayOf[Privy::AccountWalletConfigurationItem],
        Privy::Internal::Type::Converter
      )
  end
end
