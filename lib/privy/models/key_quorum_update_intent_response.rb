# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#update_key_quorum
    class KeyQuorumUpdateIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::KeyQuorumUpdateIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::KeyQuorumUpdateIntentResponse::IntentType }

      # @!attribute request_details
      #   Request details for a key quorum intent.
      #
      #   @return [Privy::Models::KeyQuorumIntentRequestDetails]
      required :request_details, -> { Privy::KeyQuorumIntentRequestDetails }

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
      #   {Privy::Models::KeyQuorumUpdateIntentResponse} for more details.
      #
      #   Response for a key quorum update intent
      #
      #   @param intent_type [Symbol, Privy::Models::KeyQuorumUpdateIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::KeyQuorumIntentRequestDetails] Request details for a key quorum intent.
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
    end
  end
end
