# frozen_string_literal: true

module Privy
  module Models
    # @type [Privy::Internal::Type::Converter]
    ConditionSetItems = Privy::Internal::Type::ArrayOf[-> { Privy::ConditionSetItem }]
  end
end
