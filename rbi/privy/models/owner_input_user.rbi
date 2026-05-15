# typed: strong

module Privy
  module Models
    class OwnerInputUser < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::OwnerInputUser, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :user_id

      # Owner input specifying a Privy user ID.
      sig { params(user_id: String).returns(T.attached_class) }
      def self.new(user_id:)
      end

      sig { override.returns({ user_id: String }) }
      def to_hash
      end
    end
  end
end
