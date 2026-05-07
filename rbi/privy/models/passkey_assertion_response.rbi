# typed: strong

module Privy
  module Models
    class PasskeyAssertionResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyAssertionResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :authenticator_data

      sig { returns(String) }
      attr_accessor :client_data_json

      sig { returns(String) }
      attr_accessor :signature

      sig { returns(T.nilable(String)) }
      attr_reader :user_handle

      sig { params(user_handle: String).void }
      attr_writer :user_handle

      # The authenticator assertion response from a WebAuthn authentication ceremony.
      sig do
        params(
          authenticator_data: String,
          client_data_json: String,
          signature: String,
          user_handle: String
        ).returns(T.attached_class)
      end
      def self.new(
        authenticator_data:,
        client_data_json:,
        signature:,
        user_handle: nil
      )
      end

      sig do
        override.returns(
          {
            authenticator_data: String,
            client_data_json: String,
            signature: String,
            user_handle: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
