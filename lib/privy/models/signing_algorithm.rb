# frozen_string_literal: true

module Privy
  module Models
    # The signing algorithm used by the wallet.
    module SigningAlgorithm
      extend Privy::Internal::Type::Enum

      ECDSA = :ECDSA
      ED_DSA = :EdDSA
      SCHNORR = :Schnorr

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
