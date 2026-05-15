# typed: strong

module Privy
  module Models
    class PasskeyUser < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::PasskeyUser, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :display_name

      sig { returns(String) }
      attr_accessor :name

      # User entity for a WebAuthn registration ceremony.
      sig do
        params(id: String, display_name: String, name: String).returns(
          T.attached_class
        )
      end
      def self.new(id:, display_name:, name:)
      end

      sig do
        override.returns({ id: String, display_name: String, name: String })
      end
      def to_hash
      end
    end
  end
end
