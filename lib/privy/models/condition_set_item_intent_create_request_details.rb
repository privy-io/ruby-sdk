# frozen_string_literal: true

module Privy
  module Models
    class ConditionSetItemIntentCreateRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute body
      #   Array of values to add to the condition set. Maximum 100 items per request.
      #
      #   @return [Array<Privy::Models::ConditionSetItemValueInput>]
      required :body, -> { Privy::Internal::Type::ArrayOf[Privy::ConditionSetItemValueInput] }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::ConditionSetItemIntentCreateRequestDetails::Method]
      required :method_,
               enum: -> { Privy::ConditionSetItemIntentCreateRequestDetails::Method },
               api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(body:, method_:, url:)
      #   Request details for adding items to a condition set via intent.
      #
      #   @param body [Array<Privy::Models::ConditionSetItemValueInput>] Array of values to add to the condition set. Maximum 100 items per request.
      #
      #   @param method_ [Symbol, Privy::Models::ConditionSetItemIntentCreateRequestDetails::Method]
      #
      #   @param url [String]

      # @see Privy::Models::ConditionSetItemIntentCreateRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        POST = :POST

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
