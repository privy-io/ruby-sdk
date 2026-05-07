# typed: strong

module Privy
  module Models
    class MfaVerifyResponseBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaVerifyResponseBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :token

      # The response body for verifying a MFA code.
      sig { params(token: String).returns(T.attached_class) }
      def self.new(token:)
      end

      sig { override.returns({ token: String }) }
      def to_hash
      end
    end
  end
end
