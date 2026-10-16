# frozen_string_literal: true

module Privy
  module Models
    class ConditionSetItemIntentUpdateRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute body
      #   Array of values to add to the condition set. Maximum 100 items per request.
      #
      #   @return [Array<Privy::Models::ConditionSetItemValueInput>]
      required :body, -> { Privy::Internal::Type::ArrayOf[Privy::ConditionSetItemValueInput] }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::ConditionSetItemIntentUpdateRequestDetails::Method]
      required :method_,
               enum: -> { Privy::ConditionSetItemIntentUpdateRequestDetails::Method },
               api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(body:, method_:, url:)
      #   Request details for replacing the items of a condition set via intent.
      #
      #   @param body [Array<Privy::Models::ConditionSetItemValueInput>] Array of values to add to the condition set. Maximum 100 items per request.
      #
      #   @param method_ [Symbol, Privy::Models::ConditionSetItemIntentUpdateRequestDetails::Method]
      #
      #   @param url [String]

      # @see Privy::Models::ConditionSetItemIntentUpdateRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        PUT = :PUT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
