# typed: strong

module Privy
  module Models
    class LinkedAccountPasskey < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountPasskey, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :credential_id

      sig { returns(T::Boolean) }
      attr_accessor :enrolled_in_mfa

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(Privy::LinkedAccountPasskey::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      sig { returns(T.nilable(String)) }
      attr_reader :authenticator_name

      sig { params(authenticator_name: String).void }
      attr_writer :authenticator_name

      sig { returns(T.nilable(String)) }
      attr_reader :created_with_browser

      sig { params(created_with_browser: String).void }
      attr_writer :created_with_browser

      sig { returns(T.nilable(String)) }
      attr_reader :created_with_device

      sig { params(created_with_device: String).void }
      attr_writer :created_with_device

      sig { returns(T.nilable(String)) }
      attr_reader :created_with_os

      sig { params(created_with_os: String).void }
      attr_writer :created_with_os

      sig { returns(T.nilable(String)) }
      attr_reader :public_key

      sig { params(public_key: String).void }
      attr_writer :public_key

      # A passkey account linked to the user.
      sig do
        params(
          credential_id: String,
          enrolled_in_mfa: T::Boolean,
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          type: Privy::LinkedAccountPasskey::Type::OrSymbol,
          verified_at: Float,
          authenticator_name: String,
          created_with_browser: String,
          created_with_device: String,
          created_with_os: String,
          public_key: String
        ).returns(T.attached_class)
      end
      def self.new(
        credential_id:,
        enrolled_in_mfa:,
        first_verified_at:,
        latest_verified_at:,
        type:,
        verified_at:,
        authenticator_name: nil,
        created_with_browser: nil,
        created_with_device: nil,
        created_with_os: nil,
        public_key: nil
      )
      end

      sig do
        override.returns(
          {
            credential_id: String,
            enrolled_in_mfa: T::Boolean,
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            type: Privy::LinkedAccountPasskey::Type::TaggedSymbol,
            verified_at: Float,
            authenticator_name: String,
            created_with_browser: String,
            created_with_device: String,
            created_with_os: String,
            public_key: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountPasskey::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PASSKEY =
          T.let(:passkey, Privy::LinkedAccountPasskey::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountPasskey::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
