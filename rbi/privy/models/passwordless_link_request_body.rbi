# typed: strong

module Privy
  module Models
    class PasswordlessLinkRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasswordlessLinkRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :code

      sig { returns(String) }
      attr_accessor :email

      # The request body for linking a passwordless account.
      sig { params(code: String, email: String).returns(T.attached_class) }
      def self.new(code:, email:)
      end

      sig { override.returns({ code: String, email: String }) }
      def to_hash
      end
    end
  end
end
