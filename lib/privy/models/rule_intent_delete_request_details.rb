# frozen_string_literal: true

module Privy
  module Models
    class RuleIntentDeleteRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::RuleIntentDeleteRequestDetails::Method]
      required :method_, enum: -> { Privy::RuleIntentDeleteRequestDetails::Method }, api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!attribute body
      #
      #   @return [Privy::Models::RuleIntentDeleteRequestDetails::Body, nil]
      optional :body, -> { Privy::RuleIntentDeleteRequestDetails::Body }

      # @!method initialize(method_:, url:, body: nil)
      #   Request details for deleting a rule via intent.
      #
      #   @param method_ [Symbol, Privy::Models::RuleIntentDeleteRequestDetails::Method]
      #   @param url [String]
      #   @param body [Privy::Models::RuleIntentDeleteRequestDetails::Body]

      # @see Privy::Models::RuleIntentDeleteRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        DELETE = :DELETE

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::RuleIntentDeleteRequestDetails#body
      class Body < Privy::Internal::Type::BaseModel
        # @!method initialize
      end
    end
  end
end
