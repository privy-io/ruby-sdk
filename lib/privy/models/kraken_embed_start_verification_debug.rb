# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedStartVerificationDebug < Privy::Internal::Type::BaseModel
      # @!attribute outcome
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedStartVerificationDebug::Outcome, nil]
      optional :outcome, enum: -> { Privy::KrakenEmbedStartVerificationDebug::Outcome }, nil?: true

      # @!method initialize(outcome: nil)
      #   Debug options for start verification. Only works in non-production environments.
      #
      #   @param outcome [Symbol, Privy::Models::KrakenEmbedStartVerificationDebug::Outcome, nil]

      # @see Privy::Models::KrakenEmbedStartVerificationDebug#outcome
      module Outcome
        extend Privy::Internal::Type::Enum

        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
