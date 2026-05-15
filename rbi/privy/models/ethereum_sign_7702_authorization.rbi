# typed: strong

module Privy
  module Models
    class EthereumSign7702Authorization < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumSign7702Authorization, Privy::Internal::AnyHash)
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
      attr_accessor :r

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :s

      sig { returns(Float) }
      attr_accessor :y_parity

      # A signed EIP-7702 authorization that delegates code execution to a contract
      # address.
      sig do
        params(
          chain_id: Privy::Quantity::Variants,
          contract: String,
          nonce: Privy::Quantity::Variants,
          r: String,
          s: String,
          y_parity: Float
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
        r:,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        s:,
        y_parity:
      )
      end

      sig do
        override.returns(
          {
            chain_id: Privy::Quantity::Variants,
            contract: String,
            nonce: Privy::Quantity::Variants,
            r: String,
            s: String,
            y_parity: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
