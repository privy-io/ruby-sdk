# frozen_string_literal: true

module Privy
  module Models
    # Parameters for the `raw_sign` RPC.
    module RawSignInputParams
      extend Privy::Internal::Type::Union

      # Parameters for signing a pre-computed hash with the `raw_sign` RPC.
      variant -> { Privy::RawSignHashParams }

      # Parameters for hashing and signing bytes with the `raw_sign` RPC.
      variant -> { Privy::RawSignBytesParams }

      # @!method self.variants
      #   @return [Array(Privy::Models::RawSignHashParams, Privy::Models::RawSignBytesParams)]
    end
  end
end
