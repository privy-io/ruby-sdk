# frozen_string_literal: true

module Privy
  module Models
    # The type of cryptographic signature to produce. Use "ecdsa" for standard ECDSA
    # signatures, or "erc1271" for ERC-1271 compliant signatures for smart account
    # wallets.
    module SignatureType
      extend Privy::Internal::Type::Enum

      ECDSA = :ecdsa
      ERC1271 = :erc1271

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
