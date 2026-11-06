# frozen_string_literal: true

module Privy
  module Models
    class UpdateConditionSetItemRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute name
      #   New label for the item, unique within the condition set ignoring case, or `null`
      #   to remove it.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute value
      #   New value for the item, which must not already exist in the condition set.
      #
      #   @return [String, nil]
      optional :value, String

      # @!method initialize(name: nil, value: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::UpdateConditionSetItemRequestBody} for more details.
      #
      #   Fields to update on a condition set item; at least one is required.
      #
      #   @param name [String, nil] New label for the item, unique within the condition set ignoring case, or `null`
      #
      #   @param value [String] New value for the item, which must not already exist in the condition set.
    end
  end
end
