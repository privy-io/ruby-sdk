# typed: strong

module Privy
  module Models
    ConditionSetItemsRequestBody =
      T.let(
        Privy::Internal::Type::ArrayOf[Privy::ConditionSetItemValueInput],
        Privy::Internal::Type::Converter
      )
  end
end
