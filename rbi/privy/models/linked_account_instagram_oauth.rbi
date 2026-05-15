# typed: strong

module Privy
  module Models
    class LinkedAccountInstagramOAuth < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountInstagramOAuth, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Privy::LinkedAccountInstagramOAuth::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_accessor :username

      sig { returns(Float) }
      attr_accessor :verified_at

      # An Instagram OAuth account linked to the user.
      sig do
        params(
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          subject: String,
          type: Privy::LinkedAccountInstagramOAuth::Type::OrSymbol,
          username: T.nilable(String),
          verified_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        first_verified_at:,
        latest_verified_at:,
        subject:,
        type:,
        username:,
        verified_at:
      )
      end

      sig do
        override.returns(
          {
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            subject: String,
            type: Privy::LinkedAccountInstagramOAuth::Type::TaggedSymbol,
            username: T.nilable(String),
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
            T.all(Symbol, Privy::LinkedAccountInstagramOAuth::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INSTAGRAM_OAUTH =
          T.let(
            :instagram_oauth,
            Privy::LinkedAccountInstagramOAuth::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountInstagramOAuth::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
