# frozen_string_literal: true

module Privy
  module Models
    class EthereumSecp256k1SignRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute hash_
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :hash_, String, api_name: :hash

      # @!method initialize(hash_:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumSecp256k1SignRpcInputParams} for more details.
      #
      #   Parameters for the EVM `secp256k1_sign` RPC.
      #
      #   @param hash_ [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
    end
  end
end
