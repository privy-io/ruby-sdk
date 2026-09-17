# typed: strong

module Privy
  module Models
    class KYBPubliclyTradedListing < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYBPubliclyTradedListing, Privy::Internal::AnyHash)
        end

      # ISO 10383 market identifier code of the listing venue.
      sig { returns(String) }
      attr_accessor :market_identifier_code

      # ISIN with dashes removed.
      sig { returns(String) }
      attr_accessor :stock_number

      # Exchange ticker symbol.
      sig { returns(String) }
      attr_accessor :ticker

      # A public exchange listing for the business.
      sig do
        params(
          market_identifier_code: String,
          stock_number: String,
          ticker: String
        ).returns(T.attached_class)
      end
      def self.new(
        # ISO 10383 market identifier code of the listing venue.
        market_identifier_code:,
        # ISIN with dashes removed.
        stock_number:,
        # Exchange ticker symbol.
        ticker:
      )
      end

      sig do
        override.returns(
          {
            market_identifier_code: String,
            stock_number: String,
            ticker: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
