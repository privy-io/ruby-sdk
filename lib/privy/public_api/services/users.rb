# frozen_string_literal: true

module Privy
  module Services
    class Users < Privy::Resources::Users
      attr_reader :privy_client

      def initialize(client:, privy_client:)
        super(client: client)
        @privy_client = privy_client
      end

      # Create a new user with linked accounts. Optionally pre-generate embedded wallets
      # for the user.
      #
      # @example Create a user from an email address
      #   client.users.create(user_create_params: {
      #     linked_accounts: [{address: "tom.bombadill@privy.io", type: :email}]
      #   })
      #
      # @example Create a user with custom metadata and a pregenerated Ethereum wallet
      #   client.users.create(user_create_params: {
      #     linked_accounts: [{address: "tom.bombadill@privy.io", type: :email}],
      #     custom_metadata: {plan: "pro"},
      #     wallets: [{chain_type: :ethereum}]
      #   })
      #
      # @param user_create_params [Hash] Body parameters for user creation.
      # @option user_create_params [Array<Hash>] :linked_accounts Linked accounts to associate with the user (required).
      # @option user_create_params [Hash{Symbol=>String, Float, Boolean}, nil] :custom_metadata Custom metadata associated with the user.
      # @option user_create_params [Array<Hash>, nil] :wallets Wallets to pregenerate for the user.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::User]
      def create(user_create_params:, request_options: nil)
        super(user_create_params.merge(request_options: request_options))
      end
    end
  end
end
