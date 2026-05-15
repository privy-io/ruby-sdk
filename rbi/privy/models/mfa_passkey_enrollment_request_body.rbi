# typed: strong

module Privy
  module Models
    class MfaPasskeyEnrollmentRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::MfaPasskeyEnrollmentRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[String]) }
      attr_accessor :credential_ids

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :remove_for_login

      sig { params(remove_for_login: T::Boolean).void }
      attr_writer :remove_for_login

      # The request body for enrolling a passkey MFA flow.
      sig do
        params(
          credential_ids: T::Array[String],
          remove_for_login: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(credential_ids:, remove_for_login: nil)
      end

      sig do
        override.returns(
          { credential_ids: T::Array[String], remove_for_login: T::Boolean }
        )
      end
      def to_hash
      end
    end
  end
end
