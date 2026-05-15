# typed: strong

module Privy
  module Models
    class PasskeyCredentialDescriptor < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyCredentialDescriptor, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :type

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :transports

      sig { params(transports: T::Array[String]).void }
      attr_writer :transports

      # A WebAuthn credential descriptor identifying a specific public key credential.
      sig do
        params(id: String, type: String, transports: T::Array[String]).returns(
          T.attached_class
        )
      end
      def self.new(id:, type:, transports: nil)
      end

      sig do
        override.returns(
          { id: String, type: String, transports: T::Array[String] }
        )
      end
      def to_hash
      end
    end
  end
end
