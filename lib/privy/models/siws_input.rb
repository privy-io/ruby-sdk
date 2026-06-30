# frozen_string_literal: true

module Privy
  module Models
    class SiwsInput < Privy::Internal::Type::BaseModel
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

      # @!attribute wallet_client_type
      #
      #   @return [String, nil]
      optional :wallet_client_type, String, api_name: :walletClientType, nil?: true

      # @!method initialize(message:, signature:, connector_type: nil, message_type: nil, wallet_client_type: nil)
      #   Input for a SIWS signing ceremony.
      #
      #   @param message [String]
      #
      #   @param signature [String]
      #
      #   @param connector_type [String, nil]
      #
      #   @param message_type [Symbol, Privy::Models::SiwsMessageType] The type of SIWS message being signed.
      #
      #   @param wallet_client_type [String, nil]
    end
  end
end
