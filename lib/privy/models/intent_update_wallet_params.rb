# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#update_wallet
    class IntentUpdateWalletParams < Privy::Models::WalletUpdateRequestBody
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute wallet_id
      #   ID of the wallet.
      #
      #   @return [String]
      required :wallet_id, String

      # @!attribute privy_request_expiry
      #   Request expiry. Value is a Unix timestamp in milliseconds representing the
      #   deadline by which the request must be processed.
      #
      #   @return [String, nil]
      optional :privy_request_expiry, String

      # @!method initialize(wallet_id:, privy_request_expiry: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::IntentUpdateWalletParams} for more details.
      #
      #   @param wallet_id [String] ID of the wallet.
      #
      #   @param privy_request_expiry [String] Request expiry. Value is a Unix timestamp in milliseconds representing the deadl
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
