# typed: strong

module Privy
  module Models
    AdditionalSignerInput =
      T.let(
        Privy::Internal::Type::ArrayOf[Privy::AdditionalSignerItemInput],
        Privy::Internal::Type::Converter
      )
  end
end
