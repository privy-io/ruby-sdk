# typed: strong

module Privy
  module Models
    class TestAccount < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::TestAccount, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :otp_code

      sig { returns(String) }
      attr_accessor :phone_number

      sig { returns(String) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # A test account for an app.
      sig do
        params(
          id: String,
          created_at: String,
          email: String,
          otp_code: String,
          phone_number: String,
          updated_at: String,
          name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        email:,
        otp_code:,
        phone_number:,
        updated_at:,
        name: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            email: String,
            otp_code: String,
            phone_number: String,
            updated_at: String,
            name: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
