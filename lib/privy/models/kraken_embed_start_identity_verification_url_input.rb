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
      #   @return [Privy::Models::KrakenEmbedStartIdentityVerificationURLInput::Debug, nil]
      optional :debug, -> { Privy::KrakenEmbedStartIdentityVerificationURLInput::Debug }

      # @!attribute metadata
      #   Optional best-effort metadata hints for proof of identity verification.
      #
      #   @return [Privy::Models::KrakenEmbedStartIdentityVerificationURLInput::Metadata, nil]
      optional :metadata, -> { Privy::KrakenEmbedStartIdentityVerificationURLInput::Metadata }

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
      #   @param debug [Privy::Models::KrakenEmbedStartIdentityVerificationURLInput::Debug] Debug options for start verification. Only works in non-production environments.
      #
      #   @param metadata [Privy::Models::KrakenEmbedStartIdentityVerificationURLInput::Metadata] Optional best-effort metadata hints for proof of identity verification.

      # @see Privy::Models::KrakenEmbedStartIdentityVerificationURLInput#type
      module Type
        extend Privy::Internal::Type::Enum

        PROOF_OF_IDENTITY = :proof_of_identity

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::KrakenEmbedStartIdentityVerificationURLInput#debug
      class Debug < Privy::Models::KrakenEmbedStartVerificationDebug
        # @!method initialize
        #   Debug options for start verification. Only works in non-production environments.
      end

      # @see Privy::Models::KrakenEmbedStartIdentityVerificationURLInput#metadata
      class Metadata < Privy::Models::KrakenEmbedStartIdentityMetadata
        # @!method initialize
        #   Optional best-effort metadata hints for proof of identity verification.
      end
    end
  end
end
