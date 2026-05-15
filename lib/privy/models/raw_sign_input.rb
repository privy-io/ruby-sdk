# frozen_string_literal: true

module Privy
  module Models
    class RawSignInput < Privy::Internal::Type::BaseModel
      # @!attribute params
      #   Parameters for the `raw_sign` RPC.
      #
      #   @return [Privy::Models::RawSignHashParams, Privy::Models::RawSignBytesParams]
      required :params, union: -> { Privy::RawSignInputParams }

      # @!method initialize(params:)
      #   Provide either `hash` (to sign a pre-computed hash) OR `bytes`, `encoding`, and
      #   `hash_function` (to hash and then sign). These options are mutually exclusive.
      #
      #   @param params [Privy::Models::RawSignHashParams, Privy::Models::RawSignBytesParams] Parameters for the `raw_sign` RPC.
    end
  end
end
