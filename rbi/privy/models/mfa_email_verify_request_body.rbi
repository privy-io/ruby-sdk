# typed: strong

module Privy
  module Models
    class MfaEmailVerifyRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaEmailVerifyRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :code

      # The request body for verifying an email MFA code.
      sig { params(code: String).returns(T.attached_class) }
      def self.new(code:)
      end

      sig { override.returns({ code: String }) }
      def to_hash
      end
    end
  end
end
