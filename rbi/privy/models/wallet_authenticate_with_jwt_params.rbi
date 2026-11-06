# typed: strong

module Privy
  module Models
    class WalletAuthenticateWithJwtParams < Privy::Models::WalletAuthenticateRequestBody
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAuthenticateWithJwtParams,
            Privy::Internal::AnyHash
          )
        end

      # MFA token from a completed MFA verification, required on MFA-protected requests
      # for users with MFA enrolled.
      sig { returns(T.nilable(String)) }
      attr_reader :mfa_token

      sig { params(mfa_token: String).void }
      attr_writer :mfa_token

      sig do
        params(
          mfa_token: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # MFA token from a completed MFA verification, required on MFA-protected requests
        # for users with MFA enrolled.
        mfa_token: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { mfa_token: String, request_options: Privy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
