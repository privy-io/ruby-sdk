# typed: strong

module Privy
  module Models
    class FarcasterConnectInitResponseBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::FarcasterConnectInitResponseBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :channel_token

      sig { returns(String) }
      attr_accessor :connect_uri

      # The response body for initiating a Farcaster connection.
      sig do
        params(channel_token: String, connect_uri: String).returns(
          T.attached_class
        )
      end
      def self.new(channel_token:, connect_uri:)
      end

      sig { override.returns({ channel_token: String, connect_uri: String }) }
      def to_hash
      end
    end
  end
end
