# frozen_string_literal: true

module Privy
  module Models
    class KeyQuorumIntentDeleteRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::KeyQuorumIntentDeleteRequestDetails::Method]
      required :method_, enum: -> { Privy::KeyQuorumIntentDeleteRequestDetails::Method }, api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!attribute body
      #   Empty request body for a key quorum delete intent.
      #
      #   @return [Privy::Models::KeyQuorumIntentDeleteRequestBody, nil]
      optional :body, -> { Privy::KeyQuorumIntentDeleteRequestBody }

      # @!method initialize(method_:, url:, body: nil)
      #   Request details for deleting a key quorum via intent.
      #
      #   @param method_ [Symbol, Privy::Models::KeyQuorumIntentDeleteRequestDetails::Method]
      #
      #   @param url [String]
      #
      #   @param body [Privy::Models::KeyQuorumIntentDeleteRequestBody] Empty request body for a key quorum delete intent.

      # @see Privy::Models::KeyQuorumIntentDeleteRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        DELETE = :DELETE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
