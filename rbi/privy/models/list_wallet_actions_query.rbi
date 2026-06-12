# typed: strong

module Privy
  module Models
    class ListWalletActionsQuery < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ListWalletActionsQuery, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(Float)) }
      attr_accessor :limit

      # Query parameters for listing wallet actions.
      sig do
        params(cursor: String, limit: T.nilable(Float)).returns(
          T.attached_class
        )
      end
      def self.new(cursor: nil, limit: nil)
      end

      sig { override.returns({ cursor: String, limit: T.nilable(Float) }) }
      def to_hash
      end
    end
  end
end
