# typed: strong

module Privy
  module Models
    class LinkedAccountAuthorizationKey < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountAuthorizationKey, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(String) }
      attr_accessor :public_key

      sig { returns(Privy::LinkedAccountAuthorizationKey::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      # An authorization key linked to the user.
      sig do
        params(
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          public_key: String,
          type: Privy::LinkedAccountAuthorizationKey::Type::OrSymbol,
          verified_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        first_verified_at:,
        latest_verified_at:,
        public_key:,
        type:,
        verified_at:
      )
      end

      sig do
        override.returns(
          {
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            public_key: String,
            type: Privy::LinkedAccountAuthorizationKey::Type::TaggedSymbol,
            verified_at: Float
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::LinkedAccountAuthorizationKey::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZATION_KEY =
          T.let(
            :authorization_key,
            Privy::LinkedAccountAuthorizationKey::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountAuthorizationKey::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
