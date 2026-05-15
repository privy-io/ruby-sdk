# frozen_string_literal: true

module Privy
  module Models
    class GetFiatOnrampQuotesResponse < Privy::Internal::Type::BaseModel
      # @!attribute quotes
      #
      #   @return [Array<Privy::Models::FiatOnrampQuote>]
      required :quotes, -> { Privy::Internal::Type::ArrayOf[Privy::FiatOnrampQuote] }

      # @!attribute provider_errors
      #
      #   @return [Array<Privy::Models::FiatOnrampProviderError>, nil]
      optional :provider_errors, -> { Privy::Internal::Type::ArrayOf[Privy::FiatOnrampProviderError] }

      # @!method initialize(quotes:, provider_errors: nil)
      #   The response containing fiat onramp quotes.
      #
      #   @param quotes [Array<Privy::Models::FiatOnrampQuote>]
      #   @param provider_errors [Array<Privy::Models::FiatOnrampProviderError>]
    end
  end
end
