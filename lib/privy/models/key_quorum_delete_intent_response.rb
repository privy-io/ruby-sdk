# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#delete_key_quorum
    class KeyQuorumDeleteIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::KeyQuorumDeleteIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::KeyQuorumDeleteIntentResponse::IntentType }

      # @!attribute request_details
      #   Request details for deleting a key quorum via intent.
      #
      #   @return [Privy::Models::KeyQuorumIntentDeleteRequestDetails]
      required :request_details, -> { Privy::KeyQuorumIntentDeleteRequestDetails }

      # @!attribute action_result
      #   Result of key quorum delete execution (only present if status is 'executed' or
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
      #   {Privy::Models::KeyQuorumDeleteIntentResponse} for more details.
      #
      #   Response for a key quorum delete intent
      #
      #   @param intent_type [Symbol, Privy::Models::KeyQuorumDeleteIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::KeyQuorumIntentDeleteRequestDetails] Request details for deleting a key quorum via intent.
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of key quorum delete execution (only present if status is 'executed' or '
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
