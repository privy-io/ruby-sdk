# typed: strong

module Privy
  module Models
    class UpdateOrganizationSecretSigningKeyInput < Privy::Models::OrganizationSecretIDInput
      OrHash =
        T.type_alias do
          T.any(
            Privy::UpdateOrganizationSecretSigningKeyInput,
            Privy::Internal::AnyHash
          )
        end

      # P-256 public key in PEM format, or null to clear the configured signing key.
      sig { returns(T.nilable(String)) }
      attr_accessor :signing_public_key

      # Request body for updating the signing public key on an organization secret.
      sig do
        params(signing_public_key: T.nilable(String)).returns(T.attached_class)
      end
      def self.new(
        # P-256 public key in PEM format, or null to clear the configured signing key.
        signing_public_key:
      )
      end

      sig { override.returns({ signing_public_key: T.nilable(String) }) }
      def to_hash
      end
    end
  end
end
