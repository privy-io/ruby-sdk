# typed: strong

module Privy
  module Models
    class PasswordlessSMSUpdateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::PasswordlessSMSUpdateRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :code

      sig { returns(String) }
      attr_accessor :new_phone_number

      sig { returns(String) }
      attr_accessor :old_phone_number

      # The request body for updating a passwordless sms account.
      sig do
        params(
          code: String,
          new_phone_number: String,
          old_phone_number: String
        ).returns(T.attached_class)
      end
      def self.new(code:, new_phone_number:, old_phone_number:)
      end

      sig do
        override.returns(
          { code: String, new_phone_number: String, old_phone_number: String }
        )
      end
      def to_hash
      end
    end
  end
end
