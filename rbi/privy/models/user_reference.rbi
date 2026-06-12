# typed: strong

module Privy
  module Models
    class UserReference < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::UserReference, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # A reference to a user by their unique identifier.
      sig { params(id: String).returns(T.attached_class) }
      def self.new(id:)
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
