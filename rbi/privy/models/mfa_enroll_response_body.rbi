# typed: strong

module Privy
  module Models
    class MfaEnrollResponseBody < Privy::Models::User
      OrHash =
        T.type_alias do
          T.any(Privy::MfaEnrollResponseBody, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :mfa_token

      sig { params(mfa_token: String).void }
      attr_writer :mfa_token

      # The enrolled user, with an MFA token only when adding the first MFA method.
      sig { params(mfa_token: String).returns(T.attached_class) }
      def self.new(mfa_token: nil)
      end

      sig { override.returns({ mfa_token: String }) }
      def to_hash
      end
    end
  end
end
