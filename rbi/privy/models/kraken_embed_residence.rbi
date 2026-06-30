# typed: strong

module Privy
  module Models
    class KrakenEmbedResidence < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedResidence, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :city

      # ISO 3166-1 alpha-2 country codes supported by Kraken Embed.
      sig { returns(Privy::KrakenEmbedCountryCode::OrSymbol) }
      attr_accessor :country

      sig { returns(String) }
      attr_accessor :line1

      sig { returns(String) }
      attr_accessor :postal_code

      sig { returns(T.nilable(String)) }
      attr_accessor :line2

      sig { returns(T.nilable(String)) }
      attr_accessor :province

      # User's residential address including street, city, postal code, and country.
      sig do
        params(
          city: String,
          country: Privy::KrakenEmbedCountryCode::OrSymbol,
          line1: String,
          postal_code: String,
          line2: T.nilable(String),
          province: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        city:,
        # ISO 3166-1 alpha-2 country codes supported by Kraken Embed.
        country:,
        line1:,
        postal_code:,
        line2: nil,
        province: nil
      )
      end

      sig do
        override.returns(
          {
            city: String,
            country: Privy::KrakenEmbedCountryCode::OrSymbol,
            line1: String,
            postal_code: String,
            line2: T.nilable(String),
            province: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
