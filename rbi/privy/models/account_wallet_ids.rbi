# typed: strong

module Privy
  module Models
    AccountWalletIDs =
      T.let(
        Privy::Internal::Type::ArrayOf[String],
        Privy::Internal::Type::Converter
      )
  end
end
