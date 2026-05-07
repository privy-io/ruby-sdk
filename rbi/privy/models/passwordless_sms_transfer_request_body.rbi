# typed: strong

module Privy
  module Models
    class PasswordlessSMSTransferRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::PasswordlessSMSTransferRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :nonce

      sig { returns(String) }
      attr_accessor :phone_number

      # The request body for transferring a passwordless sms account.
      sig do
        params(nonce: String, phone_number: String).returns(T.attached_class)
      end
      def self.new(nonce:, phone_number:)
      end

      sig { override.returns({ nonce: String, phone_number: String }) }
      def to_hash
      end
    end
  end
end
