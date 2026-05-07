# typed: strong

module Privy
  module Models
    class PasswordlessSMSUnlinkRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::PasswordlessSMSUnlinkRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :phone_number

      # The request body for unlinking a passwordless sms account.
      sig { params(phone_number: String).returns(T.attached_class) }
      def self.new(phone_number:)
      end

      sig { override.returns({ phone_number: String }) }
      def to_hash
      end
    end
  end
end
