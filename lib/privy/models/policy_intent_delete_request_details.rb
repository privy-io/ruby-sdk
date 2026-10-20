# frozen_string_literal: true

module Privy
  module Models
    class PolicyIntentDeleteRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::PolicyIntentDeleteRequestDetails::Method]
      required :method_, enum: -> { Privy::PolicyIntentDeleteRequestDetails::Method }, api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!attribute body
      #   Empty request body for a policy delete intent.
      #
      #   @return [Privy::Models::PolicyIntentDeleteRequestBody, nil]
      optional :body, -> { Privy::PolicyIntentDeleteRequestBody }

      # @!method initialize(method_:, url:, body: nil)
      #   Request details for deleting a policy via intent.
      #
      #   @param method_ [Symbol, Privy::Models::PolicyIntentDeleteRequestDetails::Method]
      #
      #   @param url [String]
      #
      #   @param body [Privy::Models::PolicyIntentDeleteRequestBody] Empty request body for a policy delete intent.

      # @see Privy::Models::PolicyIntentDeleteRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        DELETE = :DELETE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
