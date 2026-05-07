# typed: strong

module Privy
  module Models
    class UnlinkPasskeyInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::UnlinkPasskeyInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :credential_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :remove_as_mfa

      sig { params(remove_as_mfa: T::Boolean).void }
      attr_writer :remove_as_mfa

      # Input for unlinking a passkey credential.
      sig do
        params(credential_id: String, remove_as_mfa: T::Boolean).returns(
          T.attached_class
        )
      end
      def self.new(credential_id:, remove_as_mfa: nil)
      end

      sig do
        override.returns({ credential_id: String, remove_as_mfa: T::Boolean })
      end
      def to_hash
      end
    end
  end
end
