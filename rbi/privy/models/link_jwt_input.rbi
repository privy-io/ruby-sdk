# typed: strong

module Privy
  module Models
    class LinkJwtInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::LinkJwtInput, Privy::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # Input for linking a custom JWT account.
      sig { params(token: String).returns(T.attached_class) }
      def self.new(token: nil)
      end

      sig { override.returns({ token: String }) }
      def to_hash
      end
    end
  end
end
