# typed: strong

module Privy
  module Models
    class LinkedAccountTiktokOAuth < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountTiktokOAuth, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Privy::LinkedAccountTiktokOAuth::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_accessor :username

      sig { returns(Float) }
      attr_accessor :verified_at

      # A TikTok OAuth account linked to the user.
      sig do
        params(
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          name: T.nilable(String),
          subject: String,
          type: Privy::LinkedAccountTiktokOAuth::Type::OrSymbol,
          username: T.nilable(String),
          verified_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        first_verified_at:,
        latest_verified_at:,
        name:,
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
            name: T.nilable(String),
            subject: String,
            type: Privy::LinkedAccountTiktokOAuth::Type::TaggedSymbol,
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
          T.type_alias { T.all(Symbol, Privy::LinkedAccountTiktokOAuth::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TIKTOK_OAUTH =
          T.let(
            :tiktok_oauth,
            Privy::LinkedAccountTiktokOAuth::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountTiktokOAuth::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
