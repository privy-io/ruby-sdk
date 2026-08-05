# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCardResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute balance
      #
      #   @return [String, nil]
      required :balance, String, nil?: true

      # @!attribute brand
      #
      #   @return [String, nil]
      required :brand, String, nil?: true

      # @!attribute chain_id
      #   A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      #
      #   @return [String]
      required :chain_id, String

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

      # @!method initialize(id:, balance:, brand:, chain_id:, last4:, provider_id:, status:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CardIssuingCardResponse} for more details.
      #
      #   Stripe Issuing card state bound to a Privy user and wallet.
      #
      #   @param id [String]
      #
      #   @param balance [String, nil]
      #
      #   @param brand [String, nil]
      #
      #   @param chain_id [String] A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
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
