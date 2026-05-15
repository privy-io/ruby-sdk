# typed: strong

module Privy
  module Models
    class OAuthAuthenticateRecoveryResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OAuthAuthenticateRecoveryResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :access_token

      # The response from authenticating with OAuth for recovery.
      sig { params(access_token: String).returns(T.attached_class) }
      def self.new(access_token:)
      end

      sig { override.returns({ access_token: String }) }
      def to_hash
      end
    end
  end
end
