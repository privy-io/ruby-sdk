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

      # Update a key quorum by key quorum ID.
      #
      # @example Update authorization threshold to 1-of-2
      #   client.key_quorums.update("key-quorum-id",
      #     key_quorum_update_params: {authorization_threshold: 1},
      #     authorization_context: ctx)
      #
      # @param key_quorum_id [String] ID of the key quorum to update.
      # @param key_quorum_update_params [Hash] Body parameters for the update.
      # @option key_quorum_update_params [Integer, nil] :authorization_threshold Number of keys required to sign.
      # @option key_quorum_update_params [String, nil] :display_name Human-readable label.
      # @option key_quorum_update_params [Array<String>, nil] :public_keys P-256 public keys to authorize.
      # @option key_quorum_update_params [Array<String>, nil] :user_ids User IDs to authorize.
      # @option key_quorum_update_params [Array<String>, nil] :key_quorum_ids Nested key quorum IDs.
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for signing.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::KeyQuorum]
      def update(key_quorum_id, key_quorum_update_params:, authorization_context: nil, request_expiry: nil, request_options: nil)
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :patch,
          url: Privy::Authorization.signed_url(privy_client, "v1/key_quorums/#{key_quorum_id}"),
          body: key_quorum_update_params,
          authorization_context: authorization_context,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        combined_params = key_quorum_update_params.merge(request_options: request_options)
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(key_quorum_id, combined_params)
      end

      # Delete a key quorum by key quorum ID.
      #
      # @example Delete a key quorum with authorization
      #   client.key_quorums.delete("key-quorum-id", authorization_context: ctx)
      #
      # @param key_quorum_id [String] ID of the key quorum to delete.
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for signing.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::SuccessResponse]
      def delete(key_quorum_id, authorization_context: nil, request_expiry: nil, request_options: nil)
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :delete,
          url: Privy::Authorization.signed_url(privy_client, "v1/key_quorums/#{key_quorum_id}"),
          body: "",
          authorization_context: authorization_context,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        combined_params = {request_options: request_options}
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(key_quorum_id, combined_params)
      end
    end
  end
end
