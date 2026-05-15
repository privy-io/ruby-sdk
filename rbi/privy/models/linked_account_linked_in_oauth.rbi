# typed: strong

module Privy
  module Models
    class LinkedAccountLinkedInOAuth < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountLinkedInOAuth, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :email

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Privy::LinkedAccountLinkedInOAuth::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :vanity_name

      sig { params(vanity_name: String).void }
      attr_writer :vanity_name

      # A LinkedIn OAuth account linked to the user.
      sig do
        params(
          email: T.nilable(String),
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          subject: String,
          type: Privy::LinkedAccountLinkedInOAuth::Type::OrSymbol,
          verified_at: Float,
          name: String,
          vanity_name: String
        ).returns(T.attached_class)
      end
      def self.new(
        email:,
        first_verified_at:,
        latest_verified_at:,
        subject:,
        type:,
        verified_at:,
        name: nil,
        vanity_name: nil
      )
      end

      sig do
        override.returns(
          {
            email: T.nilable(String),
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            subject: String,
            type: Privy::LinkedAccountLinkedInOAuth::Type::TaggedSymbol,
            verified_at: Float,
            name: String,
            vanity_name: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::LinkedAccountLinkedInOAuth::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LINKEDIN_OAUTH =
          T.let(
            :linkedin_oauth,
            Privy::LinkedAccountLinkedInOAuth::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountLinkedInOAuth::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
