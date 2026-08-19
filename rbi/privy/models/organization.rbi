# typed: strong

module Privy
  module Models
    class Organization < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::Organization, Privy::Internal::AnyHash) }

      # Unique organization identifier
      sig { returns(String) }
      attr_accessor :id

      # Unix timestamp when the organization was created
      sig { returns(Float) }
      attr_accessor :created_at

      # A unique identifier for a key quorum.
      sig { returns(String) }
      attr_accessor :default_key_quorum_id

      # Organization display name
      sig { returns(String) }
      attr_accessor :display_name

      # Unix timestamp when the organization was last updated
      sig { returns(Float) }
      attr_accessor :updated_at

      # A Privy organization object.
      sig do
        params(
          id: String,
          created_at: Float,
          default_key_quorum_id: String,
          display_name: String,
          updated_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique organization identifier
        id:,
        # Unix timestamp when the organization was created
        created_at:,
        # A unique identifier for a key quorum.
        default_key_quorum_id:,
        # Organization display name
        display_name:,
        # Unix timestamp when the organization was last updated
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Float,
            default_key_quorum_id: String,
            display_name: String,
            updated_at: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
