# frozen_string_literal: true

module Privy
  module Models
    class OnrampSessionParams < Privy::Internal::Type::BaseModel
      # @!attribute crypto_customer_id
      #
      #   @return [String]
      required :crypto_customer_id, String

      # @!attribute destination_currency
      #   Token identifier string. EVM-shaped 40-hex token addresses normalize to checksum
      #   case, 16-byte Hyperliquid token IDs normalize to lowercase, and all other
      #   identifiers pass through unchanged.
      #
      #   @return [String]
      required :destination_currency, String

      # @!attribute destination_network
      #
      #   @return [String]
      required :destination_network, String

      # @!attribute payment_token
      #
      #   @return [String]
      required :payment_token, String

      # @!attribute source_amount
      #
      #   @return [String]
      required :source_amount, String

      # @!attribute source_currency
      #   ISO 4217 fiat currency code. Three uppercase ASCII letters.
      #
      #   @return [String]
      required :source_currency, String

      # @!attribute wallet_address
      #
      #   @return [String]
      required :wallet_address, String

      # @!method initialize(crypto_customer_id:, destination_currency:, destination_network:, payment_token:, source_amount:, source_currency:, wallet_address:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::OnrampSessionParams} for more details.
      #
      #   Parameters for creating a Stripe onramp session.
      #
      #   @param crypto_customer_id [String]
      #
      #   @param destination_currency [String] Token identifier string. EVM-shaped 40-hex token addresses normalize to checksum
      #
      #   @param destination_network [String]
      #
      #   @param payment_token [String]
      #
      #   @param source_amount [String]
      #
      #   @param source_currency [String] ISO 4217 fiat currency code. Three uppercase ASCII letters.
      #
      #   @param wallet_address [String]
    end
  end
end
