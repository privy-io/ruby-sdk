# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#update_key_quorum
    class KeyQuorumIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::KeyQuorumIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::KeyQuorumIntentResponse::IntentType }

      # @!attribute request_details
      #   The original key quorum update request that would be sent to the key quorum
      #   endpoint
      #
      #   @return [Privy::Models::KeyQuorumIntentResponse::RequestDetails]
      required :request_details, -> { Privy::KeyQuorumIntentResponse::RequestDetails }

      # @!attribute action_result
      #   Result of key quorum update execution (only present if status is 'executed' or
      #   'failed')
      #
      #   @return [Privy::Models::BaseActionResult, nil]
      optional :action_result, -> { Privy::BaseActionResult }

      # @!attribute current_resource_data
      #   A key quorum for authorizing wallet operations.
      #
      #   @return [Privy::Models::KeyQuorum, nil]
      optional :current_resource_data, -> { Privy::KeyQuorum }

      # @!method initialize(intent_type:, request_details:, action_result: nil, current_resource_data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KeyQuorumIntentResponse} for more details.
      #
      #   Response for a key quorum intent
      #
      #   @param intent_type [Symbol, Privy::Models::KeyQuorumIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::KeyQuorumIntentResponse::RequestDetails] The original key quorum update request that would be sent to the key quorum endp
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of key quorum update execution (only present if status is 'executed' or '
      #
      #   @param current_resource_data [Privy::Models::KeyQuorum] A key quorum for authorizing wallet operations.

      module IntentType
        extend Privy::Internal::Type::Enum

        KEY_QUORUM = :KEY_QUORUM

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class RequestDetails < Privy::Internal::Type::BaseModel
        # @!attribute body
        #   Request input for updating an existing key quorum.
        #
        #   @return [Privy::Models::KeyQuorumUpdateRequestBody]
        required :body, -> { Privy::KeyQuorumUpdateRequestBody }

        # @!attribute method_
        #
        #   @return [Symbol, Privy::Models::KeyQuorumIntentResponse::RequestDetails::Method]
        required :method_,
                 enum: -> {
                   Privy::KeyQuorumIntentResponse::RequestDetails::Method
                 },
                 api_name: :method

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!method initialize(body:, method_:, url:)
        #   The original key quorum update request that would be sent to the key quorum
        #   endpoint
        #
        #   @param body [Privy::Models::KeyQuorumUpdateRequestBody] Request input for updating an existing key quorum.
        #
        #   @param method_ [Symbol, Privy::Models::KeyQuorumIntentResponse::RequestDetails::Method]
        #
        #   @param url [String]

        # @see Privy::Models::KeyQuorumIntentResponse::RequestDetails#method_
        module Method
          extend Privy::Internal::Type::Enum

          PATCH = :PATCH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
