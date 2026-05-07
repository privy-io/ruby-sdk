# typed: strong

module Privy
  module Models
    class PasswordlessUpdateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasswordlessUpdateRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :code

      sig { returns(String) }
      attr_accessor :new_address

      sig { returns(String) }
      attr_accessor :old_address

      # The request body for updating a passwordless account.
      sig do
        params(code: String, new_address: String, old_address: String).returns(
          T.attached_class
        )
      end
      def self.new(code:, new_address:, old_address:)
      end

      sig do
        override.returns(
          { code: String, new_address: String, old_address: String }
        )
      end
      def to_hash
      end
    end
  end
end
