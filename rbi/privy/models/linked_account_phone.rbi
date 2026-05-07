# typed: strong

module Privy
  module Models
    class LinkedAccountPhone < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountPhone, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(String) }
      attr_accessor :phone_number

      sig { returns(Privy::LinkedAccountPhone::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      sig { returns(T.nilable(String)) }
      attr_reader :number

      sig { params(number: String).void }
      attr_writer :number

      # A phone number account linked to the user.
      sig do
        params(
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          phone_number: String,
          type: Privy::LinkedAccountPhone::Type::OrSymbol,
          verified_at: Float,
          number: String
        ).returns(T.attached_class)
      end
      def self.new(
        first_verified_at:,
        latest_verified_at:,
        phone_number:,
        type:,
        verified_at:,
        number: nil
      )
      end

      sig do
        override.returns(
          {
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            phone_number: String,
            type: Privy::LinkedAccountPhone::Type::TaggedSymbol,
            verified_at: Float,
            number: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountPhone::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PHONE = T.let(:phone, Privy::LinkedAccountPhone::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountPhone::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
