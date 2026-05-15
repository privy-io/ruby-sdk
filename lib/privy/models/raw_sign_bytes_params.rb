# frozen_string_literal: true

module Privy
  module Models
    class RawSignBytesParams < Privy::Internal::Type::BaseModel
      # @!attribute bytes
      #   The bytes to hash and sign.
      #
      #   @return [String]
      required :bytes, String

      # @!attribute encoding
      #   Encoding scheme for bytes in the `raw_sign` RPC.
      #
      #   @return [Symbol, Privy::Models::RawSignBytesEncoding]
      required :encoding, enum: -> { Privy::RawSignBytesEncoding }

      # @!attribute hash_function
      #   Hash function for bytes in the `raw_sign` RPC.
      #
      #   @return [Symbol, Privy::Models::RawSignBytesHashFunction]
      required :hash_function, enum: -> { Privy::RawSignBytesHashFunction }

      # @!method initialize(bytes:, encoding:, hash_function:)
      #   Parameters for hashing and signing bytes with the `raw_sign` RPC.
      #
      #   @param bytes [String] The bytes to hash and sign.
      #
      #   @param encoding [Symbol, Privy::Models::RawSignBytesEncoding] Encoding scheme for bytes in the `raw_sign` RPC.
      #
      #   @param hash_function [Symbol, Privy::Models::RawSignBytesHashFunction] Hash function for bytes in the `raw_sign` RPC.
    end
  end
end
