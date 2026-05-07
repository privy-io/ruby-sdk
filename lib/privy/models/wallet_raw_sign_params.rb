# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#raw_sign
    class WalletRawSignParams < Privy::Models::RawSignInput
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute wallet_id
      #   ID of the wallet.
      #
      #   @return [String]
      required :wallet_id, String

      # @!attribute privy_authorization_signature
      #   Request authorization signature. If multiple signatures are required, they
      #   should be comma separated.
      #
      #   @return [String, nil]
      optional :privy_authorization_signature, String

      # @!attribute privy_idempotency_key
      #   Idempotency keys ensure API requests are executed only once within a 24-hour
      #   window.
      #
      #   @return [String, nil]
      optional :privy_idempotency_key, String

      # @!attribute privy_request_expiry
      #   Request expiry. Value is a Unix timestamp in milliseconds representing the
      #   deadline by which the request must be processed.
      #
      #   @return [String, nil]
      optional :privy_request_expiry, String

      # @!method initialize(wallet_id:, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletRawSignParams} for more details.
      #
      #   @param wallet_id [String] ID of the wallet.
      #
      #   @param privy_authorization_signature [String] Request authorization signature. If multiple signatures are required, they shoul
      #
      #   @param privy_idempotency_key [String] Idempotency keys ensure API requests are executed only once within a 24-hour win
      #
      #   @param privy_request_expiry [String] Request expiry. Value is a Unix timestamp in milliseconds representing the deadl
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
