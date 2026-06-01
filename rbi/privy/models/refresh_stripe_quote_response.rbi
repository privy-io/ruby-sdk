# typed: strong

module Privy
  module Models
    class RefreshStripeQuoteResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RefreshStripeQuoteResponse, Privy::Internal::AnyHash)
        end

      # A refreshed quote.
      sig { returns(Privy::StripeQuote) }
      attr_reader :quote

      sig { params(quote: Privy::StripeQuote::OrHash).void }
      attr_writer :quote

      # Refreshed quote with new expiry.
      sig do
        params(quote: Privy::StripeQuote::OrHash).returns(T.attached_class)
      end
      def self.new(
        # A refreshed quote.
        quote:
      )
      end

      sig { override.returns({ quote: Privy::StripeQuote }) }
      def to_hash
      end
    end
  end
end
