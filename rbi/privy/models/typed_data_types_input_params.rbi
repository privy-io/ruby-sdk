# typed: strong

module Privy
  module Models
    TypedDataTypesInputParams =
      T.let(
        Privy::Internal::Type::HashOf[
          Privy::Internal::Type::ArrayOf[Privy::TypedDataTypeFieldInput]
        ],
        Privy::Internal::Type::Converter
      )
  end
end
