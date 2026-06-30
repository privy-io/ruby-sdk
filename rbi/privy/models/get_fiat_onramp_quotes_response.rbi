# typed: strong

module Privy
  module Models
    class GetFiatOnrampQuotesResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GetFiatOnrampQuotesResponse, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :destination_currency_icon_url

      sig { returns(String) }
      attr_accessor :destination_currency_symbol

      sig { returns(T.nilable(String)) }
      attr_accessor :destination_network_icon_url

      sig { returns(T::Array[Privy::FiatOnrampQuote]) }
      attr_accessor :quotes

      sig { returns(T.nilable(T::Array[Privy::FiatOnrampProviderError])) }
      attr_reader :provider_errors

      sig do
        params(
          provider_errors: T::Array[Privy::FiatOnrampProviderError::OrHash]
        ).void
      end
      attr_writer :provider_errors

      # The response containing fiat onramp quotes.
      sig do
        params(
          destination_currency_icon_url: T.nilable(String),
          destination_currency_symbol: String,
          destination_network_icon_url: T.nilable(String),
          quotes: T::Array[Privy::FiatOnrampQuote::OrHash],
          provider_errors: T::Array[Privy::FiatOnrampProviderError::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        destination_currency_icon_url:,
        destination_currency_symbol:,
        destination_network_icon_url:,
        quotes:,
        provider_errors: nil
      )
      end

      sig do
        override.returns(
          {
            destination_currency_icon_url: T.nilable(String),
            destination_currency_symbol: String,
            destination_network_icon_url: T.nilable(String),
            quotes: T::Array[Privy::FiatOnrampQuote],
            provider_errors: T::Array[Privy::FiatOnrampProviderError]
          }
        )
      end
      def to_hash
      end
    end
  end
end
