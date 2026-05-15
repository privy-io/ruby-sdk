# frozen_string_literal: true

module Privy
  module Resources
    # Operations related to key quorums
    class KeyQuorums
      # Some parameter documentations has been truncated, see
      # {Privy::Models::KeyQuorumCreateParams} for more details.
      #
      # Create a new key quorum.
      #
      # @overload create(authorization_threshold: nil, display_name: nil, key_quorum_ids: nil, public_keys: nil, user_ids: nil, request_options: {})
      #
      # @param authorization_threshold [Float] The number of keys that must sign for an action to be valid. Must be less than o
      #
      # @param display_name [String]
      #
      # @param key_quorum_ids [Array<String>] List of key quorum IDs that should be members of this key quorum. Key quorums ca
      #
      # @param public_keys [Array<String>] List of P-256 public keys of the keys that should be authorized to sign on the k
      #
      # @param user_ids [Array<String>] List of user IDs of the users that should be authorized to sign on the key quoru
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::KeyQuorum]
      #
      # @see Privy::Models::KeyQuorumCreateParams
      def create(params = {})
        parsed, options = Privy::KeyQuorumCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/key_quorums",
          body: parsed,
          model: Privy::KeyQuorum,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::KeyQuorumUpdateParams} for more details.
      #
      # Update a key quorum by key quorum ID.
      #
      # @overload update(key_quorum_id, authorization_threshold: nil, display_name: nil, key_quorum_ids: nil, public_keys: nil, user_ids: nil, privy_authorization_signature: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param key_quorum_id [String] Path param: A unique identifier for a key quorum.
      #
      # @param authorization_threshold [Float] Body param: The number of keys that must sign for an action to be valid. Must be
      #
      # @param display_name [String] Body param
      #
      # @param key_quorum_ids [Array<String>] Body param: List of key quorum IDs that should be members of this key quorum. Ke
      #
      # @param public_keys [Array<String>] Body param: List of P-256 public keys of the keys that should be authorized to s
      #
      # @param user_ids [Array<String>] Body param: List of user IDs of the users that should be authorized to sign on t
      #
      # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::KeyQuorum]
      #
      # @see Privy::Models::KeyQuorumUpdateParams
      def update(key_quorum_id, params = {})
        parsed, options = Privy::KeyQuorumUpdateParams.dump_request(params)
        header_params =
          {
            privy_authorization_signature: "privy-authorization-signature",
            privy_request_expiry: "privy-request-expiry"
          }
        @client.request(
          method: :patch,
          path: ["v1/key_quorums/%1$s", key_quorum_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::KeyQuorum,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::KeyQuorumDeleteParams} for more details.
      #
      # Delete a key quorum by key quorum ID.
      #
      # @overload delete(key_quorum_id, privy_authorization_signature: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param key_quorum_id [String] A unique identifier for a key quorum.
      #
      # @param privy_authorization_signature [String] Request authorization signature. If multiple signatures are required, they shoul
      #
      # @param privy_request_expiry [String] Request expiry. Value is a Unix timestamp in milliseconds representing the deadl
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::SuccessResponse]
      #
      # @see Privy::Models::KeyQuorumDeleteParams
      def delete(key_quorum_id, params = {})
        parsed, options = Privy::KeyQuorumDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["v1/key_quorums/%1$s", key_quorum_id],
          headers: parsed.transform_keys(
            privy_authorization_signature: "privy-authorization-signature",
            privy_request_expiry: "privy-request-expiry"
          ),
          model: Privy::SuccessResponse,
          options: options
        )
      end

      # Get a key quorum by ID.
      #
      # @overload get(key_quorum_id, request_options: {})
      #
      # @param key_quorum_id [String] A unique identifier for a key quorum.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::KeyQuorum]
      #
      # @see Privy::Models::KeyQuorumGetParams
      def get(key_quorum_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/key_quorums/%1$s", key_quorum_id],
          model: Privy::KeyQuorum,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Privy::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
