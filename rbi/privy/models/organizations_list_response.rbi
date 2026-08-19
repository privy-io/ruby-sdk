# typed: strong

module Privy
  module Models
    class OrganizationsListResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OrganizationsListResponse, Privy::Internal::AnyHash)
        end

      sig { returns(T::Array[Privy::Organization]) }
      attr_accessor :data

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # Response returned when listing organizations for an app.
      sig do
        params(
          data: T::Array[Privy::Organization::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(data:, next_cursor:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Privy::Organization],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
