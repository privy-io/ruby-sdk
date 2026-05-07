# typed: strong

module Privy
  module Models
    class LinkedAccountAppleOAuth < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountAppleOAuth, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :email

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Privy::LinkedAccountAppleOAuth::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      # An Apple OAuth account linked to the user.
      sig do
        params(
          email: T.nilable(String),
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          subject: String,
          type: Privy::LinkedAccountAppleOAuth::Type::OrSymbol,
          verified_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        email:,
        first_verified_at:,
        latest_verified_at:,
        subject:,
        type:,
        verified_at:
      )
      end

      sig do
        override.returns(
          {
            email: T.nilable(String),
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            subject: String,
            type: Privy::LinkedAccountAppleOAuth::Type::TaggedSymbol,
            verified_at: Float
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountAppleOAuth::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPLE_OAUTH =
          T.let(
            :apple_oauth,
            Privy::LinkedAccountAppleOAuth::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountAppleOAuth::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
