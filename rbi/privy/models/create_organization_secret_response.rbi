# typed: strong

module Privy
  module Models
    class CreateOrganizationSecretResponse < Privy::Models::OrganizationSecretView
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateOrganizationSecretResponse,
            Privy::Internal::AnyHash
          )
        end

      # The plaintext organization secret. Returned only at creation time.
      sig { returns(String) }
      attr_accessor :organization_secret

      # Response returned when creating a new organization secret.
      sig { params(organization_secret: String).returns(T.attached_class) }
      def self.new(
        # The plaintext organization secret. Returned only at creation time.
        organization_secret:
      )
      end

      sig { override.returns({ organization_secret: String }) }
      def to_hash
      end
    end
  end
end
