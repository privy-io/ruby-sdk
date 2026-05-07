# typed: strong

module Privy
  module Models
    ConditionSetItems =
      T.let(
        Privy::Internal::Type::ArrayOf[Privy::ConditionSetItem],
        Privy::Internal::Type::Converter
      )
  end
end
