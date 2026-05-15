# frozen_string_literal: true

module Privy
  module Models
    class AuthenticateSiweInput < Privy::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String]
      required :message, String

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!attribute chain_id
      #
      #   @return [String, nil]
      optional :chain_id, String, api_name: :chainId, nil?: true

      # @!attribute connector_type
      #
      #   @return [String, nil]
      optional :connector_type, String, api_name: :connectorType, nil?: true

      # @!attribute mode
      #   Whether to allow sign-up during authentication.
      #
      #   @return [Symbol, Privy::Models::AuthenticateModeOption, nil]
      optional :mode, enum: -> { Privy::AuthenticateModeOption }

      # @!attribute wallet_client_type
      #
      #   @return [String, nil]
      optional :wallet_client_type, String, api_name: :walletClientType, nil?: true

      # @!method initialize(message:, signature:, chain_id: nil, connector_type: nil, mode: nil, wallet_client_type: nil)
      #   Input for authenticating a SIWE ceremony.
      #
      #   @param message [String]
      #
      #   @param signature [String]
      #
      #   @param chain_id [String, nil]
      #
      #   @param connector_type [String, nil]
      #
      #   @param mode [Symbol, Privy::Models::AuthenticateModeOption] Whether to allow sign-up during authentication.
      #
      #   @param wallet_client_type [String, nil]
    end
  end
end
