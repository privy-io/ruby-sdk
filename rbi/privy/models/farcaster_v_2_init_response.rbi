# typed: strong

module Privy
  module Models
    class FarcasterV2InitResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FarcasterV2InitResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :expires_at

      sig { returns(String) }
      attr_accessor :nonce

      # Response for initiating a Farcaster V2 connection.
      sig do
        params(expires_at: String, nonce: String).returns(T.attached_class)
      end
      def self.new(expires_at:, nonce:)
      end

      sig { override.returns({ expires_at: String, nonce: String }) }
      def to_hash
      end
    end
  end
end
