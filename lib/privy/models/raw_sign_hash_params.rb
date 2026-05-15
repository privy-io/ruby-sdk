# frozen_string_literal: true

module Privy
  module Models
    class RawSignHashParams < Privy::Internal::Type::BaseModel
      # @!attribute hash_
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :hash_, String, api_name: :hash

      # @!method initialize(hash_:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::RawSignHashParams} for more details.
      #
      #   Parameters for signing a pre-computed hash with the `raw_sign` RPC.
      #
      #   @param hash_ [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
    end
  end
end
