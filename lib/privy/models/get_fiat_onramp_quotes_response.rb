# frozen_string_literal: true

module Privy
  module Models
    class GetFiatOnrampQuotesResponse < Privy::Internal::Type::BaseModel
      # @!attribute destination_currency_icon_url
      #
      #   @return [String, nil]
      required :destination_currency_icon_url, String, nil?: true

      # @!attribute destination_network_icon_url
      #
      #   @return [String, nil]
      required :destination_network_icon_url, String, nil?: true

      # @!attribute quotes
      #
      #   @return [Array<Privy::Models::FiatOnrampQuote>]
      required :quotes, -> { Privy::Internal::Type::ArrayOf[Privy::FiatOnrampQuote] }

      # @!attribute provider_errors
      #
      #   @return [Array<Privy::Models::FiatOnrampProviderError>, nil]
      optional :provider_errors, -> { Privy::Internal::Type::ArrayOf[Privy::FiatOnrampProviderError] }

      # @!method initialize(destination_currency_icon_url:, destination_network_icon_url:, quotes:, provider_errors: nil)
      #   The response containing fiat onramp quotes.
      #
      #   @param destination_currency_icon_url [String, nil]
      #   @param destination_network_icon_url [String, nil]
      #   @param quotes [Array<Privy::Models::FiatOnrampQuote>]
      #   @param provider_errors [Array<Privy::Models::FiatOnrampProviderError>]
    end
  end
end
