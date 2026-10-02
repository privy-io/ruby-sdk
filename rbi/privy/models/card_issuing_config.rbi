# typed: strong

module Privy
  module Models
    class CardIssuingConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingConfig, Privy::Internal::AnyHash)
        end

      # Logo for the in-app card face. Null when none is set.
      sig { returns(T.nilable(String)) }
      attr_accessor :card_logo_url

      # Stripe publishable key for initializing Stripe.js in the browser.
      sig { returns(String) }
      attr_accessor :publishable_key

      # Stripe account the publishable key acts on; absent when the key belongs to the
      # app directly.
      sig { returns(T.nilable(String)) }
      attr_reader :stripe_account

      sig { params(stripe_account: String).void }
      attr_writer :stripe_account

      # Browser-safe configuration for rendering Stripe Issuing card details.
      sig do
        params(
          card_logo_url: T.nilable(String),
          publishable_key: String,
          stripe_account: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Logo for the in-app card face. Null when none is set.
        card_logo_url:,
        # Stripe publishable key for initializing Stripe.js in the browser.
        publishable_key:,
        # Stripe account the publishable key acts on; absent when the key belongs to the
        # app directly.
        stripe_account: nil
      )
      end

      sig do
        override.returns(
          {
            card_logo_url: T.nilable(String),
            publishable_key: String,
            stripe_account: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
