# frozen_string_literal: true

module Privy
  module Services
    class KeyQuorums < Privy::Resources::KeyQuorums
      attr_reader :privy_client

      def initialize(client:, privy_client:)
        super(client: client)
        @privy_client = privy_client
      end

      # Create a new key quorum.
      #
      # @example Create a 2-of-2 key quorum
      #   client.key_quorums.create(key_quorum_create_params: {
      #     public_keys: [key1_public, key2_public],
      #     display_name: "2 of 2 Key Quorum",
      #     authorization_threshold: 2
      #   })
      #
      # @param key_quorum_create_params [Hash] Body parameters for key quorum creation.
      # @option key_quorum_create_params [Array<String>, nil] :public_keys P-256 public keys to authorize.
      # @option key_quorum_create_params [Array<String>, nil] :user_ids User IDs to authorize.
      # @option key_quorum_create_params [Array<String>, nil] :key_quorum_ids Nested key quorum IDs.
      # @option key_quorum_create_params [Integer, nil] :authorization_threshold Number of keys required to sign.
      # @option key_quorum_create_params [String, nil] :display_name Human-readable label.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::KeyQuorum]
      def create(key_quorum_create_params:, request_options: nil)
        super(key_quorum_create_params.merge(request_options: request_options))
      end
    end
  end
end
