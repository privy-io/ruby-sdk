# typed: strong

module Privy
  module Models
    class PasskeyAttestationResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyAttestationResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :attestation_object

      sig { returns(String) }
      attr_accessor :client_data_json

      sig { returns(T.nilable(String)) }
      attr_reader :authenticator_data

      sig { params(authenticator_data: String).void }
      attr_writer :authenticator_data

      sig { returns(T.nilable(String)) }
      attr_reader :public_key

      sig { params(public_key: String).void }
      attr_writer :public_key

      sig { returns(T.nilable(Float)) }
      attr_reader :public_key_algorithm

      sig { params(public_key_algorithm: Float).void }
      attr_writer :public_key_algorithm

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :transports

      sig { params(transports: T::Array[String]).void }
      attr_writer :transports

      # The authenticator attestation response from a WebAuthn registration ceremony.
      sig do
        params(
          attestation_object: String,
          client_data_json: String,
          authenticator_data: String,
          public_key: String,
          public_key_algorithm: Float,
          transports: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        attestation_object:,
        client_data_json:,
        authenticator_data: nil,
        public_key: nil,
        public_key_algorithm: nil,
        transports: nil
      )
      end

      sig do
        override.returns(
          {
            attestation_object: String,
            client_data_json: String,
            authenticator_data: String,
            public_key: String,
            public_key_algorithm: Float,
            transports: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
