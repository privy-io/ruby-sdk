# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#update_key_quorum
    class IntentUpdateKeyQuorumParams < Privy::Models::KeyQuorumUpdateRequestBody
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute key_quorum_id
      #   ID of the key quorum.
      #
      #   @return [String]
      required :key_quorum_id, String

      # @!attribute privy_request_expiry
      #   Request expiry. Value is a Unix timestamp in milliseconds representing the
      #   deadline by which the request must be processed.
      #
      #   @return [String, nil]
      optional :privy_request_expiry, String

      # @!method initialize(key_quorum_id:, privy_request_expiry: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::IntentUpdateKeyQuorumParams} for more details.
      #
      #   @param key_quorum_id [String] ID of the key quorum.
      #
      #   @param privy_request_expiry [String] Request expiry. Value is a Unix timestamp in milliseconds representing the deadl
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
