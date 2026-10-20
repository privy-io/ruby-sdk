# frozen_string_literal: true

module Privy
  module Models
    class KeyQuorumIntentRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute body
      #   Request input for updating an existing key quorum. At least one field must be
      #   provided.
      #
      #   @return [Privy::Models::KeyQuorumUpdateRequestBody]
      required :body, -> { Privy::KeyQuorumUpdateRequestBody }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::KeyQuorumIntentRequestDetails::Method]
      required :method_, enum: -> { Privy::KeyQuorumIntentRequestDetails::Method }, api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(body:, method_:, url:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KeyQuorumIntentRequestDetails} for more details.
      #
      #   Request details for a key quorum intent.
      #
      #   @param body [Privy::Models::KeyQuorumUpdateRequestBody] Request input for updating an existing key quorum. At least one field must be pr
      #
      #   @param method_ [Symbol, Privy::Models::KeyQuorumIntentRequestDetails::Method]
      #
      #   @param url [String]

      # @see Privy::Models::KeyQuorumIntentRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        PATCH = :PATCH

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
