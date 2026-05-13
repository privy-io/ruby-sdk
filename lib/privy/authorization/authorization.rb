# frozen_string_literal: true

require "openssl"

module Privy
  module Authorization
    AuthorizationContext = Data.define(:authorization_private_keys, :signatures, :sign_fns) do
      def self.build(
        authorization_private_keys: [],
        signatures: [],
        sign_fns: []
      )
        new(
          authorization_private_keys: authorization_private_keys,
          signatures: signatures,
          sign_fns: sign_fns
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

    def format_request(input)
      payload = {
        version: input.version,
        method: input.method,
        url: input.url,
        body: input.body.nil? || input.body == {} ? "" : input.body,
        headers: input.headers
      }
      Privy::Authorization::Canonicalization.canonicalize(payload).b
    end

    def generate_signature(private_key_base64:, payload:)
      key = Privy::Cryptography.import_pkcs8_private_key(private_key_base64)
      digest = OpenSSL::Digest.new("SHA256").digest(payload)
      der = key.dsa_sign_asn1(digest)
      [der].pack("m0")
    end

    def generate_signatures(_privy_client, input:, context:)
      payload = format_request(input)

      precomputed = context.signatures.dup
      key_sigs = context.authorization_private_keys.map do |pk|
        generate_signature(private_key_base64: pk, payload: payload)
      end
      fn_sigs = context.sign_fns.map { |fn| fn.call(payload) }

      precomputed + key_sigs + fn_sigs
    end

    def prepare(
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

      signatures = generate_signatures(privy_client, input: signature_input, context: ctx)
      headers["privy-authorization-signature"] = signatures.join(",") unless signatures.empty?

      PreparedRequest.new(headers: headers)
    end
  end
end
