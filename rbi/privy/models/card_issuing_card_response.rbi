# typed: strong

module Privy
  module Models
    class CardIssuingCardResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingCardResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # USD balance of the card funding wallet on the configured chain, or null when
      # unavailable.
      sig { returns(T.nilable(String)) }
      attr_accessor :balance_formatted

      sig { returns(T.nilable(String)) }
      attr_accessor :brand

      # Cardholder metadata for a card.
      sig { returns(Privy::CardIssuingCardholder) }
      attr_reader :cardholder

      sig { params(cardholder: Privy::CardIssuingCardholder::OrHash).void }
      attr_writer :cardholder

      # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      sig { returns(String) }
      attr_accessor :chain_id

      # Card expiration month from 1 to 12, or null when unavailable.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :exp_month

      # Four-digit card expiration year, or null when unavailable.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :exp_year

      sig { returns(T.nilable(String)) }
      attr_accessor :last4

      sig { returns(String) }
      attr_accessor :provider_id

      sig { returns(String) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :wallet_id

      # Stripe Issuing card state bound to a Privy user and wallet.
      sig do
        params(
          id: String,
          balance_formatted: T.nilable(String),
          brand: T.nilable(String),
          cardholder: Privy::CardIssuingCardholder::OrHash,
          chain_id: String,
          exp_month: T.nilable(Integer),
          exp_year: T.nilable(Integer),
          last4: T.nilable(String),
          provider_id: String,
          status: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # USD balance of the card funding wallet on the configured chain, or null when
        # unavailable.
        balance_formatted:,
        brand:,
        # Cardholder metadata for a card.
        cardholder:,
        # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
        chain_id:,
        # Card expiration month from 1 to 12, or null when unavailable.
        exp_month:,
        # Four-digit card expiration year, or null when unavailable.
        exp_year:,
        last4:,
        provider_id:,
        status:,
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            balance_formatted: T.nilable(String),
            brand: T.nilable(String),
            cardholder: Privy::CardIssuingCardholder,
            chain_id: String,
            exp_month: T.nilable(Integer),
            exp_year: T.nilable(Integer),
            last4: T.nilable(String),
            provider_id: String,
            status: String,
            wallet_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
