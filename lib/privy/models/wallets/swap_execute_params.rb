# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # @see Privy::Resources::Wallets::Swap#execute
      class SwapExecuteParams < Privy::Models::SwapRequestBody
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

        # @!method initialize(wallet_id:, privy_authorization_signature: nil, privy_idempotency_key: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::SwapExecuteParams} for more details.
        #
        #   @param wallet_id [String] ID of the wallet.
        #
        #   @param privy_authorization_signature [String] Request authorization signature. If multiple signatures are required, they shoul
        #
        #   @param privy_idempotency_key [String] Idempotency keys ensure API requests are executed only once within a 24-hour win
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
