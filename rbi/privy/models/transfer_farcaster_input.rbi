# typed: strong

module Privy
  module Models
    class TransferFarcasterInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferFarcasterInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :farcaster_embedded_address

      sig { returns(String) }
      attr_accessor :farcaster_id

      sig { returns(String) }
      attr_accessor :nonce

      # Input for transferring a Farcaster account.
      sig do
        params(
          farcaster_embedded_address: String,
          farcaster_id: String,
          nonce: String
        ).returns(T.attached_class)
      end
      def self.new(farcaster_embedded_address:, farcaster_id:, nonce:)
      end

      sig do
        override.returns(
          {
            farcaster_embedded_address: String,
            farcaster_id: String,
            nonce: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
