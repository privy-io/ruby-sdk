# typed: strong

module Privy
  module Models
    module Policies
      class ConditionSetsResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Policies::ConditionSetsResponse,
              Privy::Internal::AnyHash
            )
          end

        # Condition sets in this page.
        sig { returns(T::Array[Privy::ConditionSet]) }
        attr_accessor :data

        # Cursor for the next page. Null when there are no further pages.
        sig { returns(T.nilable(String)) }
        attr_accessor :next_cursor

        # Paginated list of condition sets in an app.
        sig do
          params(
            data: T::Array[Privy::ConditionSet::OrHash],
            next_cursor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Condition sets in this page.
          data:,
          # Cursor for the next page. Null when there are no further pages.
          next_cursor:
        )
        end

        sig do
          override.returns(
            {
              data: T::Array[Privy::ConditionSet],
              next_cursor: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
