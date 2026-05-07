# frozen_string_literal: true

module Privy
  module Models
    class ConditionSetRequestParams < Privy::Internal::Type::BaseModel
      # @!attribute condition_set_id
      #
      #   @return [String]
      required :condition_set_id, String

      # @!method initialize(condition_set_id:)
      #   Unique ID of the condition set to take actions on.
      #
      #   @param condition_set_id [String]
    end
  end
end
