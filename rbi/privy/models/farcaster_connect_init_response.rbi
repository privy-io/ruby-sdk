# typed: strong

module Privy
  module Models
    class FarcasterConnectInitResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FarcasterConnectInitResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :channel_token

      sig { returns(String) }
      attr_accessor :connect_uri

      # Proxy for the Farcaster Connect init response as defined in FIP-11.
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
