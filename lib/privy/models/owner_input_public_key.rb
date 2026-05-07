# frozen_string_literal: true

module Privy
  module Models
    class OwnerInputPublicKey < Privy::Internal::Type::BaseModel
      # @!attribute public_key
      #   A P-256 (secp256r1) public key.
      #
      #   @return [String]
      required :public_key, String

      # @!method initialize(public_key:)
      #   Owner input specifying a P-256 public key.
      #
      #   @param public_key [String] A P-256 (secp256r1) public key.
    end
  end
end
