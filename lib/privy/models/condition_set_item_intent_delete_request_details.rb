# frozen_string_literal: true

module Privy
  module Models
    class ConditionSetItemIntentDeleteRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::ConditionSetItemIntentDeleteRequestDetails::Method]
      required :method_,
               enum: -> { Privy::ConditionSetItemIntentDeleteRequestDetails::Method },
               api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!attribute body
      #   Empty request body for a condition set item delete intent.
      #
      #   @return [Privy::Models::ConditionSetItemIntentDeleteRequestBody, nil]
      optional :body, -> { Privy::ConditionSetItemIntentDeleteRequestBody }

      # @!method initialize(method_:, url:, body: nil)
      #   Request details for deleting a condition set item via intent.
      #
      #   @param method_ [Symbol, Privy::Models::ConditionSetItemIntentDeleteRequestDetails::Method]
      #
      #   @param url [String]
      #
      #   @param body [Privy::Models::ConditionSetItemIntentDeleteRequestBody] Empty request body for a condition set item delete intent.

      # @see Privy::Models::ConditionSetItemIntentDeleteRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        DELETE = :DELETE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
