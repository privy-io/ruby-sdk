# frozen_string_literal: true

module Privy
  module Services
    class Wallets < Privy::Resources::Wallets
      include AuthorizationSupport

      attr_reader :privy_client

      def initialize(client:, privy_client:)
        super(client: client)
        @privy_client = privy_client
      end

      def create(params = {})
        params = params.dup
        idempotency_key = params.delete(:idempotency_key)
        params[:privy_idempotency_key] = idempotency_key if idempotency_key
        super
      end

      def update(wallet_id, params = {})
        params = params.dup
        authorization_context = params.delete(:authorization_context)
        return super if authorization_context.nil?

        body = params.except(:request_options)
        prepared = Privy::Authorization.prepare(
          privy_client,
          method: :patch,
          url: signed_url("v1/wallets/#{wallet_id}"),
          body: body,
          authorization_context: authorization_context
        )
        merge_prepared_headers!(params, prepared)
        super
      end

      def rpc(wallet_id, params = {})
        params = params.dup
        authorization_context = params.delete(:authorization_context)
        idempotency_key = params.delete(:idempotency_key)
        return super if authorization_context.nil? && idempotency_key.nil?

        prepared = Privy::Authorization.prepare(
          privy_client,
          method: :post,
          url: signed_url("v1/wallets/#{wallet_id}/rpc"),
          body: params[:wallet_rpc_request_body],
          authorization_context: authorization_context,
          idempotency_key: idempotency_key
        )
        merge_prepared_headers!(params, prepared)
        super
      end
    end
  end
end
