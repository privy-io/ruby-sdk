# typed: strong

module Privy
  module Models
    class MfaPasskeyInitRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaPasskeyInitRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :relying_party

      sig { params(relying_party: String).void }
      attr_writer :relying_party

      # The request body for initiating a passkey MFA flow.
      sig { params(relying_party: String).returns(T.attached_class) }
      def self.new(relying_party: nil)
      end

      sig { override.returns({ relying_party: String }) }
      def to_hash
      end
    end
  end
end
