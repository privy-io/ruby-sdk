# typed: strong

module Privy
  module Models
    class OrganizationSecretIDInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OrganizationSecretIDInput, Privy::Internal::AnyHash)
        end

      # The organization secret ID.
      sig { returns(String) }
      attr_accessor :secret_id

      # Request body for targeting a specific organization secret.
      sig { params(secret_id: String).returns(T.attached_class) }
      def self.new(
        # The organization secret ID.
        secret_id:
      )
      end

      sig { override.returns({ secret_id: String }) }
      def to_hash
      end
    end
  end
end
