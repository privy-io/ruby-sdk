# frozen_string_literal: true

module Privy
  module Models
    class SiwsAuthenticateRequestBody < Privy::Internal::Type::BaseModel
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
      #
      #   @return [Symbol, Privy::Models::SiwsAuthenticateRequestBody::MessageType, nil]
      optional :message_type, enum: -> { Privy::SiwsAuthenticateRequestBody::MessageType }

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
      #   The request body for authenticating a SIWS ceremony.
      #
      #   @param message [String]
      #
      #   @param signature [String]
      #
      #   @param connector_type [String, nil]
      #
      #   @param message_type [Symbol, Privy::Models::SiwsAuthenticateRequestBody::MessageType]
      #
      #   @param mode [Symbol, Privy::Models::AuthenticateModeOption] Whether to allow sign-up during authentication.
      #
      #   @param wallet_client_type [String, nil]

      # @see Privy::Models::SiwsAuthenticateRequestBody#message_type
      module MessageType
        extend Privy::Internal::Type::Enum

        TRANSACTION = :transaction
        PLAIN = :plain
        OFFCHAIN_MESSAGE = :"offchain-message"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
