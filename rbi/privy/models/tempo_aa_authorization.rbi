# typed: strong

module Privy
  module Models
    class TempoAaAuthorization < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TempoAaAuthorization, Privy::Internal::AnyHash)
        end

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(Privy::Quantity::Variants) }
      attr_accessor :chain_id

      sig { returns(String) }
      attr_accessor :contract

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(Privy::Quantity::Variants) }
      attr_accessor :nonce

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :signature

      # An AA authorization for Tempo transactions with P256/WebAuthn signatures.
      sig do
        params(
          chain_id: Privy::Quantity::Variants,
          contract: String,
          nonce: Privy::Quantity::Variants,
          signature: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        chain_id:,
        contract:,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        nonce:,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        signature:
      )
      end

      sig do
        override.returns(
          {
            chain_id: Privy::Quantity::Variants,
            contract: String,
            nonce: Privy::Quantity::Variants,
            signature: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
