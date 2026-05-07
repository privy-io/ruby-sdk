# frozen_string_literal: true

module Privy
  module Models
    class RuleIntentCreateRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute body
      #   The rules that apply to each method the policy covers.
      #
      #   @return [Privy::Models::PolicyRuleRequestBody]
      required :body, -> { Privy::PolicyRuleRequestBody }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::RuleIntentCreateRequestDetails::Method]
      required :method_, enum: -> { Privy::RuleIntentCreateRequestDetails::Method }, api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(body:, method_:, url:)
      #   Request details for creating a rule via intent.
      #
      #   @param body [Privy::Models::PolicyRuleRequestBody] The rules that apply to each method the policy covers.
      #
      #   @param method_ [Symbol, Privy::Models::RuleIntentCreateRequestDetails::Method]
      #
      #   @param url [String]

      # @see Privy::Models::RuleIntentCreateRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        POST = :POST

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
