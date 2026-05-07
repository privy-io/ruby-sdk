# typed: strong

module Privy
  module Models
    class PasswordlessSMSInitRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasswordlessSMSInitRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :phone_number

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # The request body for initiating a passwordless sms ceremony.
      sig do
        params(phone_number: String, token: String).returns(T.attached_class)
      end
      def self.new(phone_number:, token: nil)
      end

      sig { override.returns({ phone_number: String, token: String }) }
      def to_hash
      end
    end
  end
end
