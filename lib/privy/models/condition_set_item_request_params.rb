# frozen_string_literal: true

module Privy
  module Models
    class ConditionSetItemRequestParams < Privy::Internal::Type::BaseModel
      # @!attribute condition_set_id
      #
      #   @return [String]
      required :condition_set_id, String

      # @!attribute condition_set_item_id
      #
      #   @return [String]
      required :condition_set_item_id, String

      # @!method initialize(condition_set_id:, condition_set_item_id:)
      #   Unique IDs of the condition set and the condition set item within the condition
      #   set to take actions on.
      #
      #   @param condition_set_id [String]
      #   @param condition_set_item_id [String]
    end
  end
end
