# typed: strong

module Privy
  module Models
    class AuthorizationKeyResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AuthorizationKeyResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Float) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :display_name

      sig { returns(String) }
      attr_accessor :public_key

      # Public-facing response for a wallet authorization key.
      sig do
        params(
          id: String,
          created_at: Float,
          display_name: T.nilable(String),
          public_key: String
        ).returns(T.attached_class)
      end
      def self.new(id:, created_at:, display_name:, public_key:)
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Float,
            display_name: T.nilable(String),
            public_key: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
