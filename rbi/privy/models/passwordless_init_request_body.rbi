# typed: strong

module Privy
  module Models
    class PasswordlessInitRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasswordlessInitRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # The request body for initiating a passwordless ceremony.
      sig { params(email: String, token: String).returns(T.attached_class) }
      def self.new(email:, token: nil)
      end

      sig { override.returns({ email: String, token: String }) }
      def to_hash
      end
    end
  end
end
