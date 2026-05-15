# typed: strong

module Privy
  module Models
    class LinkedAccountGoogleOAuth < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountGoogleOAuth, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Privy::LinkedAccountGoogleOAuth::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      # A Google OAuth account linked to the user.
      sig do
        params(
          email: String,
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          name: T.nilable(String),
          subject: String,
          type: Privy::LinkedAccountGoogleOAuth::Type::OrSymbol,
          verified_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        email:,
        first_verified_at:,
        latest_verified_at:,
        name:,
        subject:,
        type:,
        verified_at:
      )
      end

      sig do
        override.returns(
          {
            email: String,
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            name: T.nilable(String),
            subject: String,
            type: Privy::LinkedAccountGoogleOAuth::Type::TaggedSymbol,
            verified_at: Float
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountGoogleOAuth::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GOOGLE_OAUTH =
          T.let(
            :google_oauth,
            Privy::LinkedAccountGoogleOAuth::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountGoogleOAuth::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
