# frozen_string_literal: true

module Privy
  module Services
    class Wallets < Privy::Resources::Wallets
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

      private

      # Must byte-match the URL the server canonicalizes over; the generated
      # transport joins base_url + path via URI.join, which produces
      # "<scheme>://<host>[:port]/<path>" regardless of trailing slash.
      def signed_url(path)
        base = privy_client.api.base_url.to_s.chomp("/")
        "#{base}/#{path}"
      end

      def merge_prepared_headers!(params, prepared)
        prepared.headers.each do |header_name, value|
          params[header_name.tr("-", "_").to_sym] = value
        end
      end
    end
  end
end
