# typed: strong

module Privy
  module Models
    class OwnerInputPublicKey < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OwnerInputPublicKey, Privy::Internal::AnyHash)
        end

      # A P-256 (secp256r1) public key.
      sig { returns(String) }
      attr_accessor :public_key

      # Owner input specifying a P-256 public key.
      sig { params(public_key: String).returns(T.attached_class) }
      def self.new(
        # A P-256 (secp256r1) public key.
        public_key:
      )
      end

      sig { override.returns({ public_key: String }) }
      def to_hash
      end
    end
  end
end
