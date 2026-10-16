# frozen_string_literal: true

module Privy
  module Models
    class ConditionSetIntentDeleteRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::ConditionSetIntentDeleteRequestDetails::Method]
      required :method_, enum: -> { Privy::ConditionSetIntentDeleteRequestDetails::Method }, api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!attribute body
      #   Empty request body for a condition set delete intent.
      #
      #   @return [Privy::Models::ConditionSetIntentDeleteRequestBody, nil]
      optional :body, -> { Privy::ConditionSetIntentDeleteRequestBody }

      # @!method initialize(method_:, url:, body: nil)
      #   Request details for deleting a condition set via intent.
      #
      #   @param method_ [Symbol, Privy::Models::ConditionSetIntentDeleteRequestDetails::Method]
      #
      #   @param url [String]
      #
      #   @param body [Privy::Models::ConditionSetIntentDeleteRequestBody] Empty request body for a condition set delete intent.

      # @see Privy::Models::ConditionSetIntentDeleteRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        DELETE = :DELETE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
