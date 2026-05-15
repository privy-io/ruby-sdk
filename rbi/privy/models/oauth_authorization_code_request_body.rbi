# typed: strong

module Privy
  module Models
    class OAuthAuthorizationCodeRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OAuthAuthorizationCodeRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :code_challenge

      sig { returns(String) }
      attr_accessor :redirect_to

      sig { returns(String) }
      attr_accessor :state

      # The request body for getting an OAuth authorization code.
      sig do
        params(
          code_challenge: String,
          redirect_to: String,
          state: String
        ).returns(T.attached_class)
      end
      def self.new(code_challenge:, redirect_to:, state:)
      end

      sig do
        override.returns(
          { code_challenge: String, redirect_to: String, state: String }
        )
      end
      def to_hash
      end
    end
  end
end
