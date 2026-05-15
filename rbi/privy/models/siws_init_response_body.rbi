# typed: strong

module Privy
  module Models
    class SiwsInitResponseBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SiwsInitResponseBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(String) }
      attr_accessor :expires_at

      sig { returns(String) }
      attr_accessor :nonce

      # The response body for initiating a SIWS ceremony.
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
