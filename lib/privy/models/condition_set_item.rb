# frozen_string_literal: true

module Privy
  module Models
    class ConditionSetItem < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Unique ID of the created condition set item.
      #
      #   @return [String]
      required :id, String

      # @!attribute condition_set_id
      #   Unique ID of the condition set this item belongs to.
      #
      #   @return [String]
      required :condition_set_id, String

      # @!attribute created_at
      #   Unix timestamp of when the condition set item was created in milliseconds.
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute value
      #   The value stored in this condition set item.
      #
      #   @return [String]
      required :value, String

      # @!attribute name
      #   Label for the item, or null if it has none.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(id:, condition_set_id:, created_at:, value:, name: nil)
      #   A single item in a condition set.
      #
      #   @param id [String] Unique ID of the created condition set item.
      #
      #   @param condition_set_id [String] Unique ID of the condition set this item belongs to.
      #
      #   @param created_at [Float] Unix timestamp of when the condition set item was created in milliseconds.
      #
      #   @param value [String] The value stored in this condition set item.
      #
      #   @param name [String, nil] Label for the item, or null if it has none.
    end
  end
end
