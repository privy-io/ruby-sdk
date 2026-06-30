# frozen_string_literal: true

module Privy
  module Models
    class SignatureOptions < Privy::Internal::Type::BaseModel
      # @!attribute type
      #   The type of cryptographic signature to produce. Use "ecdsa" for standard ECDSA
      #   signatures, or "erc1271" for ERC-1271 compliant signatures for smart account
      #   wallets.
      #
      #   @return [Symbol, Privy::Models::SignatureType]
      required :type, enum: -> { Privy::SignatureType }

      # @!method initialize(type:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::SignatureOptions} for more details.
      #
      #   Options controlling signature production for personal_sign and
      #   eth_signTypedData_v4.
      #
      #   @param type [Symbol, Privy::Models::SignatureType] The type of cryptographic signature to produce. Use "ecdsa" for standard ECDSA s
    end
  end
end
