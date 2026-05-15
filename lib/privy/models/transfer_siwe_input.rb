# frozen_string_literal: true

module Privy
  module Models
    class TransferSiweInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

      # @!attribute chain_id
      #
      #   @return [String, nil]
      optional :chain_id, String, api_name: :chainId, nil?: true

      # @!attribute connector_type
      #
      #   @return [String, nil]
      optional :connector_type, String, api_name: :connectorType, nil?: true

      # @!attribute wallet_client_type
      #
      #   @return [String, nil]
      optional :wallet_client_type, String, api_name: :walletClientType, nil?: true

      # @!method initialize(address:, nonce:, chain_id: nil, connector_type: nil, wallet_client_type: nil)
      #   Input for transferring a SIWE account.
      #
      #   @param address [String]
      #   @param nonce [String]
      #   @param chain_id [String, nil]
      #   @param connector_type [String, nil]
      #   @param wallet_client_type [String, nil]
    end
  end
end
