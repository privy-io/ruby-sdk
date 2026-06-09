# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedStartAddressVerificationURLInput < Privy::Internal::Type::BaseModel
      # @!attribute document_url
      #
      #   @return [String]
      required :document_url, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedStartAddressVerificationURLInput::Type]
      required :type, enum: -> { Privy::KrakenEmbedStartAddressVerificationURLInput::Type }

      # @!attribute debug
      #   Debug options for start verification. Only works in non-production environments.
      #
      #   @return [Privy::Models::KrakenEmbedStartVerificationDebug, nil]
      optional :debug, -> { Privy::KrakenEmbedStartVerificationDebug }, nil?: true

      # @!attribute metadata
      #   Optional best-effort metadata hints for proof of address verification.
      #
      #   @return [Privy::Models::KrakenEmbedStartAddressMetadata, nil]
      optional :metadata, -> { Privy::KrakenEmbedStartAddressMetadata }, nil?: true

      # @!method initialize(document_url:, type:, debug: nil, metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedStartAddressVerificationURLInput} for more details.
      #
      #   Input payload for starting proof of address verification via URL.
      #
      #   @param document_url [String]
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedStartAddressVerificationURLInput::Type]
      #
      #   @param debug [Privy::Models::KrakenEmbedStartVerificationDebug, nil] Debug options for start verification. Only works in non-production environments.
      #
      #   @param metadata [Privy::Models::KrakenEmbedStartAddressMetadata, nil] Optional best-effort metadata hints for proof of address verification.

      # @see Privy::Models::KrakenEmbedStartAddressVerificationURLInput#type
      module Type
        extend Privy::Internal::Type::Enum

        PROOF_OF_ADDRESS = :proof_of_address

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
