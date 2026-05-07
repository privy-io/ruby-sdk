# frozen_string_literal: true

module Privy
  module Models
    # The cryptographic curve type used by the wallet.
    module CurveType
      extend Privy::Internal::Type::Enum

      SECP256K1 = :secp256k1
      ED25519 = :ed25519
      STARKNET = :starknet

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
