# typed: strong

module Privy
  module Models
    PolicyInput =
      T.let(
        Privy::Internal::Type::ArrayOf[String],
        Privy::Internal::Type::Converter
      )
  end
end
