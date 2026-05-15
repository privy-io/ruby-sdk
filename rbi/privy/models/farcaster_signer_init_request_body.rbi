# typed: strong

module Privy
  module Models
    class FarcasterSignerInitRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FarcasterSignerInitRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :ed25519_public_key

      sig { returns(T.nilable(String)) }
      attr_reader :deadline

      sig { params(deadline: String).void }
      attr_writer :deadline

      # The request body for initiating a Farcaster signer connection.
      sig do
        params(ed25519_public_key: String, deadline: String).returns(
          T.attached_class
        )
      end
      def self.new(ed25519_public_key:, deadline: nil)
      end

      sig { override.returns({ ed25519_public_key: String, deadline: String }) }
      def to_hash
      end
    end
  end
end
