# typed: strong

module Privy
  module Models
    class OrganizationCreateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OrganizationCreateRequestBody, Privy::Internal::AnyHash)
        end

      # A unique identifier for a key quorum.
      sig { returns(String) }
      attr_accessor :default_key_quorum_id

      sig { returns(String) }
      attr_accessor :display_name

      # Request body for creating an organization.
      sig do
        params(default_key_quorum_id: String, display_name: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # A unique identifier for a key quorum.
        default_key_quorum_id:,
        display_name:
      )
      end

      sig do
        override.returns(
          { default_key_quorum_id: String, display_name: String }
        )
      end
      def to_hash
      end
    end
  end
end
