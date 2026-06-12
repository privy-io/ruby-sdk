# frozen_string_literal: true

module Privy
  module Models
    class SiwsLinkRequestBody < Privy::Internal::Type::BaseModel
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
      #   @return [Symbol, Privy::Models::SiwsLinkRequestBody::MessageType, nil]
      optional :message_type, enum: -> { Privy::SiwsLinkRequestBody::MessageType }

      # @!attribute wallet_client_type
      #
      #   @return [String, nil]
      optional :wallet_client_type, String, api_name: :walletClientType, nil?: true

      # @!method initialize(message:, signature:, connector_type: nil, message_type: nil, wallet_client_type: nil)
      #   The request body for linking a SIWS ceremony.
      #
      #   @param message [String]
      #   @param signature [String]
      #   @param connector_type [String, nil]
      #   @param message_type [Symbol, Privy::Models::SiwsLinkRequestBody::MessageType]
      #   @param wallet_client_type [String, nil]

      # @see Privy::Models::SiwsLinkRequestBody#message_type
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
