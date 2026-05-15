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
      #   @return [Privy::Models::KrakenEmbedStartAddressVerificationURLInput::Debug, nil]
      optional :debug, -> { Privy::KrakenEmbedStartAddressVerificationURLInput::Debug }

      # @!attribute metadata
      #   Optional best-effort metadata hints for proof of address verification.
      #
      #   @return [Privy::Models::KrakenEmbedStartAddressVerificationURLInput::Metadata, nil]
      optional :metadata, -> { Privy::KrakenEmbedStartAddressVerificationURLInput::Metadata }

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
      #   @param debug [Privy::Models::KrakenEmbedStartAddressVerificationURLInput::Debug] Debug options for start verification. Only works in non-production environments.
      #
      #   @param metadata [Privy::Models::KrakenEmbedStartAddressVerificationURLInput::Metadata] Optional best-effort metadata hints for proof of address verification.

      # @see Privy::Models::KrakenEmbedStartAddressVerificationURLInput#type
      module Type
        extend Privy::Internal::Type::Enum

        PROOF_OF_ADDRESS = :proof_of_address

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::KrakenEmbedStartAddressVerificationURLInput#debug
      class Debug < Privy::Models::KrakenEmbedStartVerificationDebug
        # @!method initialize
        #   Debug options for start verification. Only works in non-production environments.
      end

      # @see Privy::Models::KrakenEmbedStartAddressVerificationURLInput#metadata
      class Metadata < Privy::Models::KrakenEmbedStartAddressMetadata
        # @!method initialize
        #   Optional best-effort metadata hints for proof of address verification.
      end
    end
  end
end
