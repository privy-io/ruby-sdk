# frozen_string_literal: true

module Privy
  module Models
    # Hash function for bytes in the `raw_sign` RPC.
    module RawSignBytesHashFunction
      extend Privy::Internal::Type::Enum

      KECCAK256 = :keccak256
      SHA256 = :sha256
      BLAKE2B256 = :blake2b256

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
