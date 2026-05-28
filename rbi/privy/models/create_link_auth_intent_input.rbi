# typed: strong

module Privy
  module Models
    class CreateLinkAuthIntentInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CreateLinkAuthIntentInput, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Input for creating a Link auth intent to initiate Stripe onramp authentication.
      sig { params(email: String).returns(T.attached_class) }
      def self.new(email: nil)
      end

      sig { override.returns({ email: String }) }
      def to_hash
      end
    end
  end
end
