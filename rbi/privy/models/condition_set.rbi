# typed: strong

module Privy
  module Models
    class ConditionSet < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::ConditionSet, Privy::Internal::AnyHash) }

      # Unique ID of the created condition set. This will be the primary identifier when
      # using the condition set in the future.
      sig { returns(String) }
      attr_accessor :id

      # Unix timestamp of when the condition set was created in milliseconds.
      sig { returns(Float) }
      attr_accessor :created_at

      # Name of the condition set.
      sig { returns(String) }
      attr_accessor :name

      # A unique identifier for a key quorum.
      sig { returns(T.nilable(String)) }
      attr_accessor :owner_id

      # A condition set for grouping related condition values.
      sig do
        params(
          id: String,
          created_at: Float,
          name: String,
          owner_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique ID of the created condition set. This will be the primary identifier when
        # using the condition set in the future.
        id:,
        # Unix timestamp of when the condition set was created in milliseconds.
        created_at:,
        # Name of the condition set.
        name:,
        # A unique identifier for a key quorum.
        owner_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Float,
            name: String,
            owner_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
