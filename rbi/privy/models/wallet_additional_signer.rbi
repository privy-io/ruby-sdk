# typed: strong

module Privy
  module Models
    WalletAdditionalSigner =
      T.let(
        Privy::Internal::Type::ArrayOf[Privy::WalletAdditionalSignerItem],
        Privy::Internal::Type::Converter
      )
  end
end
