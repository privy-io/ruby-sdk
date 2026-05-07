# typed: strong

module Privy
  module Models
    class MfaSMSEnrollRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaSMSEnrollRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :code

      sig { returns(String) }
      attr_accessor :phone_number

      # The request body for enrolling a SMS MFA code.
      sig do
        params(code: String, phone_number: String).returns(T.attached_class)
      end
      def self.new(code:, phone_number:)
      end

      sig { override.returns({ code: String, phone_number: String }) }
      def to_hash
      end
    end
  end
end
