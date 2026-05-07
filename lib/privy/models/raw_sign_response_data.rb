# frozen_string_literal: true

module Privy
  module Models
    class RawSignResponseData < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::RawSignResponseData::Encoding]
      required :encoding, enum: -> { Privy::RawSignResponseData::Encoding }

      # @!attribute signature
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :signature, String

      # @!method initialize(encoding:, signature:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::RawSignResponseData} for more details.
      #
      #   Data returned by the `raw_sign` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::RawSignResponseData::Encoding]
      #
      #   @param signature [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt

      # @see Privy::Models::RawSignResponseData#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        HEX = :hex

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
