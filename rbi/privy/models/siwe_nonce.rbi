# typed: strong

module Privy
  module Models
    class SiweNonce < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SiweNonce, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :address

      sig { returns(String) }
      attr_accessor :expires_at

      sig { returns(String) }
      attr_accessor :nonce

      # A SIWE nonce response.
      sig do
        params(address: String, expires_at: String, nonce: String).returns(
          T.attached_class
        )
      end
      def self.new(address:, expires_at:, nonce:)
      end

      sig do
        override.returns({ address: String, expires_at: String, nonce: String })
      end
      def to_hash
      end
    end
  end
end
