# typed: strong

module Privy
  module Models
    class CardIssuingConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingConfig, Privy::Internal::AnyHash)
        end

      # Stripe publishable key for initializing Stripe.js in the browser.
      sig { returns(String) }
      attr_accessor :publishable_key

      # Browser-safe configuration for rendering Stripe Issuing card details.
      sig { params(publishable_key: String).returns(T.attached_class) }
      def self.new(
        # Stripe publishable key for initializing Stripe.js in the browser.
        publishable_key:
      )
      end

      sig { override.returns({ publishable_key: String }) }
      def to_hash
      end
    end
  end
end
