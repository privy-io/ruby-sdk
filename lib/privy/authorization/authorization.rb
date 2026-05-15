# frozen_string_literal: true

require "openssl"

module Privy
  module Authorization
    AuthorizationContext = Data.define(:authorization_private_keys, :signatures, :sign_fns, :user_jwts) do
      def self.build(
        authorization_private_keys: [],
        signatures: [],
        sign_fns: [],
        user_jwts: []
      )
        new(
          authorization_private_keys: authorization_private_keys,
          signatures: signatures,
          sign_fns: sign_fns,
          user_jwts: user_jwts
        )
      end
    end

    WalletApiRequestSignatureInput = Data.define(:version, :method, :url, :body, :headers) do
      def self.build(method:, url:, body:, headers:)
        new(version: 1, method: method.to_s.upcase, url: url, body: body, headers: headers.compact)
      end
    end

    PreparedRequest = Data.define(:headers)

    module_function

    def signed_url(privy_client, path)
      base = privy_client.api.base_url.to_s.chomp("/")
      "#{base}/#{path}"
    end

    def merge_prepared_headers!(params, headers)
      if headers["privy-authorization-signature"]
        params[:privy_authorization_signature] =
          headers["privy-authorization-signature"]
      end
      params[:privy_idempotency_key] = headers["privy-idempotency-key"] if headers["privy-idempotency-key"]
      params[:privy_request_expiry] = headers["privy-request-expiry"] if headers["privy-request-expiry"]
    end

    def format_request_for_authorization_signature(input)
      payload = {
        version: input.version,
        method: input.method,
        url: input.url,
        body: input.body.nil? || input.body == {} ? "" : input.body,
        headers: input.headers
      }
      Privy::Authorization::Canonicalization.canonicalize(payload).b
    end

    def generate_authorization_signature(private_key_base64:, payload:)
      key = Privy::Cryptography.import_pkcs8_private_key(private_key_base64)
      digest = OpenSSL::Digest.new("SHA256").digest(payload)
      der = key.dsa_sign_asn1(digest)
      [der].pack("m0")
    end

    # Generates all authorization signatures for a request.
    #
    # Signatures come from four sources, combined in this order:
    # 1. Precomputed signatures passed directly in the context
    # 2. Explicit private keys provided in authorization_private_keys
    # 3. Private keys obtained by exchanging user JWTs via HPKE
    # 4. Sign functions (callbacks that receive the canonicalized payload)
    def generate_authorization_signatures(privy_client, input:, context:)
      if context.user_jwts.any? && privy_client.nil?
        raise ArgumentError,
              "privy_client is required when user_jwts are provided in the authorization context"
      end

      # Canonicalize the request into a deterministic byte string for signing
      payload = format_request_for_authorization_signature(input)

      # Exchange each user JWT for an ephemeral P-256 private key via HPKE.
      # Results are cached by JwtExchangeService so repeated calls are cheap.
      jwt_keys = context.user_jwts.map do |jwt|
        privy_client.jwt_exchange.exchange_jwt_for_authorization_key(jwt)
      end
      all_private_keys = context.authorization_private_keys + jwt_keys

      key_sigs = all_private_keys.map do |pk|
        generate_authorization_signature(private_key_base64: pk, payload: payload)
      end
      fn_sigs = context.sign_fns.map { |fn| fn.call(payload) }

      key_sigs + fn_sigs + context.signatures
    end

    def prepare_request(
      privy_client,
      method:,
      url:,
      body:,
      authorization_context: nil,
      idempotency_key: nil,
      request_expiry: nil
    )
      ctx = authorization_context || AuthorizationContext.build

      headers = {}
      headers["privy-idempotency-key"] = idempotency_key if idempotency_key
      headers["privy-request-expiry"] = request_expiry.to_s if request_expiry

      signature_input = WalletApiRequestSignatureInput.build(
        method: method,
        url: url,
        body: body,
        headers: {"privy-app-id" => privy_client.app_id}.merge(headers)
      )

      signatures = generate_authorization_signatures(privy_client, input: signature_input, context: ctx)
      headers["privy-authorization-signature"] = signatures.join(",") unless signatures.empty?

      PreparedRequest.new(headers: headers)
    end
  end
end
