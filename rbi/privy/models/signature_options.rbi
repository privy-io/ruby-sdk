# typed: strong

module Privy
  module Models
    class SignatureOptions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SignatureOptions, Privy::Internal::AnyHash)
        end

      # The type of cryptographic signature to produce. Use "ecdsa" for standard ECDSA
      # signatures, or "erc1271" for ERC-1271 compliant signatures for smart account
      # wallets.
      sig { returns(Privy::SignatureType::OrSymbol) }
      attr_accessor :type

      # Options controlling signature production for personal_sign and
      # eth_signTypedData_v4.
      sig do
        params(type: Privy::SignatureType::OrSymbol).returns(T.attached_class)
      end
      def self.new(
        # The type of cryptographic signature to produce. Use "ecdsa" for standard ECDSA
        # signatures, or "erc1271" for ERC-1271 compliant signatures for smart account
        # wallets.
        type:
      )
      end

      sig { override.returns({ type: Privy::SignatureType::OrSymbol }) }
      def to_hash
      end
    end
  end
end
