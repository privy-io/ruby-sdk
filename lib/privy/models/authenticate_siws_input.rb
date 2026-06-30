# frozen_string_literal: true

module Privy
  module Models
    class AuthenticateSiwsInput < Privy::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String]
      required :message, String

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!attribute connector_type
      #
      #   @return [String, nil]
      optional :connector_type, String, api_name: :connectorType, nil?: true

      # @!attribute message_type
      #   The type of SIWS message being signed.
      #
      #   @return [Symbol, Privy::Models::SiwsMessageType, nil]
      optional :message_type, enum: -> { Privy::SiwsMessageType }

      # @!attribute mode
      #   Whether to allow sign-up during authentication.
      #
      #   @return [Symbol, Privy::Models::AuthenticateModeOption, nil]
      optional :mode, enum: -> { Privy::AuthenticateModeOption }

      # @!attribute wallet_client_type
      #
      #   @return [String, nil]
      optional :wallet_client_type, String, api_name: :walletClientType, nil?: true

      # @!method initialize(message:, signature:, connector_type: nil, message_type: nil, mode: nil, wallet_client_type: nil)
      #   Input for authenticating a SIWS ceremony.
      #
      #   @param message [String]
      #
      #   @param signature [String]
      #
      #   @param connector_type [String, nil]
      #
      #   @param message_type [Symbol, Privy::Models::SiwsMessageType] The type of SIWS message being signed.
      #
      #   @param mode [Symbol, Privy::Models::AuthenticateModeOption] Whether to allow sign-up during authentication.
      #
      #   @param wallet_client_type [String, nil]
    end
  end
end
