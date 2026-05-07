# typed: strong

module Privy
  module Models
    class LinkedAccountEmail < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountEmail, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(Privy::LinkedAccountEmail::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      # An email account linked to the user.
      sig do
        params(
          address: String,
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          type: Privy::LinkedAccountEmail::Type::OrSymbol,
          verified_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        address:,
        first_verified_at:,
        latest_verified_at:,
        type:,
        verified_at:
      )
      end

      sig do
        override.returns(
          {
            address: String,
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            type: Privy::LinkedAccountEmail::Type::TaggedSymbol,
            verified_at: Float
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountEmail::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL = T.let(:email, Privy::LinkedAccountEmail::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountEmail::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
