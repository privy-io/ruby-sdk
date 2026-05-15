# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedStartLivenessVerificationURLInput < Privy::Internal::Type::BaseModel
      # @!attribute center_url
      #
      #   @return [String]
      required :center_url, String

      # @!attribute left_url
      #
      #   @return [String]
      required :left_url, String

      # @!attribute right_url
      #
      #   @return [String]
      required :right_url, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedStartLivenessVerificationURLInput::Type]
      required :type, enum: -> { Privy::KrakenEmbedStartLivenessVerificationURLInput::Type }

      # @!attribute debug
      #   Debug options for start verification. Only works in non-production environments.
      #
      #   @return [Privy::Models::KrakenEmbedStartLivenessVerificationURLInput::Debug, nil]
      optional :debug, -> { Privy::KrakenEmbedStartLivenessVerificationURLInput::Debug }

      # @!method initialize(center_url:, left_url:, right_url:, type:, debug: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedStartLivenessVerificationURLInput} for more details.
      #
      #   Input payload for starting proof of liveness verification via URLs.
      #
      #   @param center_url [String]
      #
      #   @param left_url [String]
      #
      #   @param right_url [String]
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedStartLivenessVerificationURLInput::Type]
      #
      #   @param debug [Privy::Models::KrakenEmbedStartLivenessVerificationURLInput::Debug] Debug options for start verification. Only works in non-production environments.

      # @see Privy::Models::KrakenEmbedStartLivenessVerificationURLInput#type
      module Type
        extend Privy::Internal::Type::Enum

        PROOF_OF_LIVENESS = :proof_of_liveness

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::KrakenEmbedStartLivenessVerificationURLInput#debug
      class Debug < Privy::Models::KrakenEmbedStartVerificationDebug
        # @!method initialize
        #   Debug options for start verification. Only works in non-production environments.
      end
    end
  end
end
