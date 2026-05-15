# frozen_string_literal: true

module Privy
  module Models
    class TempoFeePayerSignature < Privy::Internal::Type::BaseModel
      # @!attribute r
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :r, String

      # @!attribute s
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :s, String

      # @!attribute y_parity
      #
      #   @return [Float, Privy::Models::TempoFeePayerSignature::YParity]
      required :y_parity, enum: -> { Privy::TempoFeePayerSignature::YParity }

      # @!method initialize(r:, s:, y_parity:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TempoFeePayerSignature} for more details.
      #
      #   A fee payer signature for sponsored Tempo transactions (secp256k1 only).
      #
      #   @param r [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param s [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param y_parity [Float, Privy::Models::TempoFeePayerSignature::YParity]

      # @see Privy::Models::TempoFeePayerSignature#y_parity
      module YParity
        extend Privy::Internal::Type::Enum

        Y_PARITY_0 = 0
        Y_PARITY_1 = 1

        # @!method self.values
        #   @return [Array<Float>]
      end
    end
  end
end
