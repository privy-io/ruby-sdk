# typed: strong

module Privy
  module Models
    class PasswordlessTransferRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::PasswordlessTransferRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :nonce

      # The request body for transferring a passwordless account.
      sig { params(email: String, nonce: String).returns(T.attached_class) }
      def self.new(email:, nonce:)
      end

      sig { override.returns({ email: String, nonce: String }) }
      def to_hash
      end
    end
  end
end
