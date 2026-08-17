# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCardResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute balance_formatted
      #   USD balance of the card funding wallet on the configured chain, or null when
      #   unavailable.
      #
      #   @return [String, nil]
      required :balance_formatted, String, nil?: true

      # @!attribute brand
      #
      #   @return [String, nil]
      required :brand, String, nil?: true

      # @!attribute cardholder
      #   Cardholder metadata for a card.
      #
      #   @return [Privy::Models::CardIssuingCardholder]
      required :cardholder, -> { Privy::CardIssuingCardholder }

      # @!attribute chain_id
      #   A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      #
      #   @return [String]
      required :chain_id, String

      # @!attribute exp_month
      #   Card expiration month from 1 to 12, or null when unavailable.
      #
      #   @return [Integer, nil]
      required :exp_month, Integer, nil?: true

      # @!attribute exp_year
      #   Four-digit card expiration year, or null when unavailable.
      #
      #   @return [Integer, nil]
      required :exp_year, Integer, nil?: true

      # @!attribute last4
      #
      #   @return [String, nil]
      required :last4, String, nil?: true

      # @!attribute provider_id
      #
      #   @return [String]
      required :provider_id, String

      # @!attribute status
      #
      #   @return [String]
      required :status, String

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(id:, balance_formatted:, brand:, cardholder:, chain_id:, exp_month:, exp_year:, last4:, provider_id:, status:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CardIssuingCardResponse} for more details.
      #
      #   Stripe Issuing card state bound to a Privy user and wallet.
      #
      #   @param id [String]
      #
      #   @param balance_formatted [String, nil] USD balance of the card funding wallet on the configured chain, or null when una
      #
      #   @param brand [String, nil]
      #
      #   @param cardholder [Privy::Models::CardIssuingCardholder] Cardholder metadata for a card.
      #
      #   @param chain_id [String] A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      #
      #   @param exp_month [Integer, nil] Card expiration month from 1 to 12, or null when unavailable.
      #
      #   @param exp_year [Integer, nil] Four-digit card expiration year, or null when unavailable.
      #
      #   @param last4 [String, nil]
      #
      #   @param provider_id [String]
      #
      #   @param status [String]
      #
      #   @param wallet_id [String]
    end
  end
end
