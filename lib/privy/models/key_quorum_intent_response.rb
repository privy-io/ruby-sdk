# frozen_string_literal: true

module Privy
  module Models
    class KeyQuorumIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::KeyQuorumIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::KeyQuorumIntentResponse::IntentType }

      # @!attribute request_details
      #   The original key quorum request. Method is PATCH (update) or DELETE (delete).
      #
      #   @return [Privy::Models::KeyQuorumIntentRequestDetails, Privy::Models::KeyQuorumIntentDeleteRequestDetails]
      required :request_details, union: -> { Privy::KeyQuorumIntentRequestDetailsUnion }

      # @!attribute action_result
      #   Result of key quorum execution (only present if status is 'executed' or
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
      #   @param request_details [Privy::Models::KeyQuorumIntentRequestDetails, Privy::Models::KeyQuorumIntentDeleteRequestDetails] The original key quorum request. Method is PATCH (update) or DELETE (delete).
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of key quorum execution (only present if status is 'executed' or 'failed'
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
