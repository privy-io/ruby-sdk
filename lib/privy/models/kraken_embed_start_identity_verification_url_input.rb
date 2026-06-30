# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedStartIdentityVerificationURLInput < Privy::Internal::Type::BaseModel
      # @!attribute front_url
      #
      #   @return [String]
      required :front_url, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedStartIdentityVerificationURLInput::Type]
      required :type, enum: -> { Privy::KrakenEmbedStartIdentityVerificationURLInput::Type }

      # @!attribute back_url
      #
      #   @return [String, nil]
      optional :back_url, String, nil?: true

      # @!attribute debug
      #   Debug options for start verification. Only works in non-production environments.
      #
      #   @return [Privy::Models::KrakenEmbedStartVerificationDebug, nil]
      optional :debug, -> { Privy::KrakenEmbedStartVerificationDebug }, nil?: true

      # @!attribute metadata
      #   Optional best-effort metadata hints for proof of identity verification.
      #
      #   @return [Privy::Models::KrakenEmbedStartIdentityMetadata, nil]
      optional :metadata, -> { Privy::KrakenEmbedStartIdentityMetadata }, nil?: true

      # @!method initialize(front_url:, type:, back_url: nil, debug: nil, metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedStartIdentityVerificationURLInput} for more details.
      #
      #   Input payload for starting proof of identity verification via URLs.
      #
      #   @param front_url [String]
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedStartIdentityVerificationURLInput::Type]
      #
      #   @param back_url [String, nil]
      #
      #   @param debug [Privy::Models::KrakenEmbedStartVerificationDebug, nil] Debug options for start verification. Only works in non-production environments.
      #
      #   @param metadata [Privy::Models::KrakenEmbedStartIdentityMetadata, nil] Optional best-effort metadata hints for proof of identity verification.

      # @see Privy::Models::KrakenEmbedStartIdentityVerificationURLInput#type
      module Type
        extend Privy::Internal::Type::Enum

        PROOF_OF_IDENTITY = :proof_of_identity

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
