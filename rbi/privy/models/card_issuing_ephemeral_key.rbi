# typed: strong

module Privy
  module Models
    class CardIssuingEphemeralKey < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingEphemeralKey, Privy::Internal::AnyHash)
        end

      # Secret used only by Stripe Issuing Elements in the authenticated browser.
      sig { returns(String) }
      attr_accessor :ephemeral_key_secret

      # Short-lived Stripe authorization for displaying card details.
      sig { params(ephemeral_key_secret: String).returns(T.attached_class) }
      def self.new(
        # Secret used only by Stripe Issuing Elements in the authenticated browser.
        ephemeral_key_secret:
      )
      end

      sig { override.returns({ ephemeral_key_secret: String }) }
      def to_hash
      end
    end
  end
end
