# typed: strong

module Privy
  module Models
    class MfaEmailEnrollRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaEmailEnrollRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :code

      sig { returns(String) }
      attr_accessor :email_address

      # The request body for enrolling an email MFA code.
      sig do
        params(code: String, email_address: String).returns(T.attached_class)
      end
      def self.new(code:, email_address:)
      end

      sig { override.returns({ code: String, email_address: String }) }
      def to_hash
      end
    end
  end
end
