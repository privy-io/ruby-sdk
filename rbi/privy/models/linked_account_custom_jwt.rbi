# typed: strong

module Privy
  module Models
    class LinkedAccountCustomJwt < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountCustomJwt, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :custom_user_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(Privy::LinkedAccountCustomJwt::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      # A custom JWT account linked to the user.
      sig do
        params(
          custom_user_id: String,
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          type: Privy::LinkedAccountCustomJwt::Type::OrSymbol,
          verified_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        custom_user_id:,
        first_verified_at:,
        latest_verified_at:,
        type:,
        verified_at:
      )
      end

      sig do
        override.returns(
          {
            custom_user_id: String,
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            type: Privy::LinkedAccountCustomJwt::Type::TaggedSymbol,
            verified_at: Float
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountCustomJwt::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOM_AUTH =
          T.let(:custom_auth, Privy::LinkedAccountCustomJwt::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountCustomJwt::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
