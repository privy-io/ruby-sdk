# frozen_string_literal: true

module Privy
  module Models
    class RuleIntentUpdateRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute body
      #   The rules that apply to each method the policy covers.
      #
      #   @return [Privy::Models::PolicyRuleRequestBody]
      required :body, -> { Privy::PolicyRuleRequestBody }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::RuleIntentUpdateRequestDetails::Method]
      required :method_, enum: -> { Privy::RuleIntentUpdateRequestDetails::Method }, api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(body:, method_:, url:)
      #   Request details for updating a rule via intent.
      #
      #   @param body [Privy::Models::PolicyRuleRequestBody] The rules that apply to each method the policy covers.
      #
      #   @param method_ [Symbol, Privy::Models::RuleIntentUpdateRequestDetails::Method]
      #
      #   @param url [String]

      # @see Privy::Models::RuleIntentUpdateRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        PATCH = :PATCH

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
