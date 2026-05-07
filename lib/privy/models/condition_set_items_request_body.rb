# frozen_string_literal: true

module Privy
  module Models
    # @type [Privy::Internal::Type::Converter]
    ConditionSetItemsRequestBody = Privy::Internal::Type::ArrayOf[-> { Privy::ConditionSetItemValueInput }]
  end
end
