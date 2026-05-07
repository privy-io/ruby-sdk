# typed: strong

module Privy
  module Models
    TypedDataDomainInputParams =
      T.let(
        Privy::Internal::Type::HashOf[Privy::Internal::Type::Unknown],
        Privy::Internal::Type::Converter
      )
  end
end
