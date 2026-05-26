# typed: strong

module Privy
  module Models
    class CreateLinkAuthIntentInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CreateLinkAuthIntentInput, Privy::Internal::AnyHash)
        end

      # Input for creating a Link auth intent to initiate Stripe onramp authentication.
      sig { returns(T.attached_class) }
      def self.new
      end

      sig { override.returns({}) }
      def to_hash
      end
    end
  end
end
