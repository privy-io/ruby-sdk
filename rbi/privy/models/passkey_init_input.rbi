# typed: strong

module Privy
  module Models
    class PasskeyInitInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyInitInput, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      sig { returns(T.nilable(String)) }
      attr_reader :relying_party

      sig { params(relying_party: String).void }
      attr_writer :relying_party

      # Input for initiating a passkey ceremony.
      sig do
        params(token: String, relying_party: String).returns(T.attached_class)
      end
      def self.new(token: nil, relying_party: nil)
      end

      sig { override.returns({ token: String, relying_party: String }) }
      def to_hash
      end
    end
  end
end
