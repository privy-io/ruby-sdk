# typed: strong

module Privy
  module Models
    class FarcasterLinkRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FarcasterLinkRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :channel_token

      sig { returns(Float) }
      attr_accessor :fid

      sig { returns(String) }
      attr_accessor :message

      sig { returns(String) }
      attr_accessor :signature

      # The request body for linking a Farcaster account.
      sig do
        params(
          channel_token: String,
          fid: Float,
          message: String,
          signature: String
        ).returns(T.attached_class)
      end
      def self.new(channel_token:, fid:, message:, signature:)
      end

      sig do
        override.returns(
          {
            channel_token: String,
            fid: Float,
            message: String,
            signature: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
