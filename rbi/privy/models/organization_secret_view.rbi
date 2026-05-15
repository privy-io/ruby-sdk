# typed: strong

module Privy
  module Models
    class OrganizationSecretView < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OrganizationSecretView, Privy::Internal::AnyHash)
        end

      # Unique secret identifier
      sig { returns(String) }
      attr_accessor :id

      # ISO 8601 creation timestamp
      sig { returns(String) }
      attr_accessor :created_at

      # Last four characters of the secret
      sig { returns(String) }
      attr_accessor :last_four

      # ISO 8601 revocation timestamp, or null if active
      sig { returns(T.nilable(String)) }
      attr_accessor :revoked_at

      # P-256 public key in PEM format for request signing, or null if not configured
      sig { returns(T.nilable(String)) }
      attr_accessor :signing_public_key

      # View of an organization secret for list and management endpoints.
      sig do
        params(
          id: String,
          created_at: String,
          last_four: String,
          revoked_at: T.nilable(String),
          signing_public_key: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique secret identifier
        id:,
        # ISO 8601 creation timestamp
        created_at:,
        # Last four characters of the secret
        last_four:,
        # ISO 8601 revocation timestamp, or null if active
        revoked_at:,
        # P-256 public key in PEM format for request signing, or null if not configured
        signing_public_key:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            last_four: String,
            revoked_at: T.nilable(String),
            signing_public_key: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
