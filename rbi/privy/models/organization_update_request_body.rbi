# typed: strong

module Privy
  module Models
    class OrganizationUpdateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OrganizationUpdateRequestBody, Privy::Internal::AnyHash)
        end

      # A unique identifier for a key quorum.
      sig { returns(T.nilable(String)) }
      attr_reader :default_key_quorum_id

      sig { params(default_key_quorum_id: String).void }
      attr_writer :default_key_quorum_id

      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # Request body for updating an organization.
      sig do
        params(default_key_quorum_id: String, display_name: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # A unique identifier for a key quorum.
        default_key_quorum_id: nil,
        display_name: nil
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
