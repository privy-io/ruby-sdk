# typed: strong

module Privy
  module Models
    class OAuthInitRecoveryInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthInitRecoveryInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :redirect_to

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      sig { returns(T.nilable(String)) }
      attr_reader :code_challenge

      sig { params(code_challenge: String).void }
      attr_writer :code_challenge

      sig { returns(T.nilable(String)) }
      attr_reader :state_code

      sig { params(state_code: String).void }
      attr_writer :state_code

      # The input for initiating an OAuth recovery flow.
      sig do
        params(
          redirect_to: String,
          token: String,
          code_challenge: String,
          state_code: String
        ).returns(T.attached_class)
      end
      def self.new(
        redirect_to:,
        token: nil,
        code_challenge: nil,
        state_code: nil
      )
      end

      sig do
        override.returns(
          {
            redirect_to: String,
            token: String,
            code_challenge: String,
            state_code: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
