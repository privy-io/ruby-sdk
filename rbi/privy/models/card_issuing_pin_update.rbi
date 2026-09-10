# typed: strong

module Privy
  module Models
    class CardIssuingPinUpdate < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingPinUpdate, Privy::Internal::AnyHash)
        end

      # The PIN, encrypted with the Stripe Issuing key.
      sig { returns(String) }
      attr_accessor :encrypted_number

      # Encrypted PIN to set on the card.
      sig { params(encrypted_number: String).returns(T.attached_class) }
      def self.new(
        # The PIN, encrypted with the Stripe Issuing key.
        encrypted_number:
      )
      end

      sig { override.returns({ encrypted_number: String }) }
      def to_hash
      end
    end
  end
end
