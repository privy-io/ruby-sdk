# typed: strong

module Privy
  module Models
    class IntentAuthorizeInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::IntentAuthorizeInput, Privy::Internal::AnyHash)
        end

      # Signature authorizing the intent.
      sig { returns(String) }
      attr_accessor :signature

      # Unix timestamp (in milliseconds) when the signature was created. Used to verify
      # the signature was created when the signing key was valid.
      sig { returns(Float) }
      attr_accessor :timestamp

      # Request body for authorizing an intent.
      sig do
        params(signature: String, timestamp: Float).returns(T.attached_class)
      end
      def self.new(
        # Signature authorizing the intent.
        signature:,
        # Unix timestamp (in milliseconds) when the signature was created. Used to verify
        # the signature was created when the signing key was valid.
        timestamp:
      )
      end

      sig { override.returns({ signature: String, timestamp: Float }) }
      def to_hash
      end
    end
  end
end
