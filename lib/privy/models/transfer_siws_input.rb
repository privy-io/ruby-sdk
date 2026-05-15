# frozen_string_literal: true

module Privy
  module Models
    class TransferSiwsInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

      # @!attribute connector_type
      #
      #   @return [String, nil]
      optional :connector_type, String, api_name: :connectorType, nil?: true

      # @!attribute wallet_client_type
      #
      #   @return [String, nil]
      optional :wallet_client_type, String, api_name: :walletClientType, nil?: true

      # @!method initialize(address:, nonce:, connector_type: nil, wallet_client_type: nil)
      #   Input for transferring a SIWS account.
      #
      #   @param address [String]
      #   @param nonce [String]
      #   @param connector_type [String, nil]
      #   @param wallet_client_type [String, nil]
    end
  end
end
