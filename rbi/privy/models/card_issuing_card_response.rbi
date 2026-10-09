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

      # The stablecoin the card settles in.
      sig { returns(String) }
      attr_accessor :asset

      # USD amount the card can spend right now, or null when unavailable.
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

      # Unix timestamp, in seconds, of when the card was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # Card expiration month from 1 to 12, or null when unavailable.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :exp_month

      # Four-digit card expiration year, or null when unavailable.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :exp_year

      # The funding sources the card can spend from, with at most one `selected`.
      sig do
        returns(
          T::Array[
            T.any(
              Privy::CardIssuingWalletFundingSource,
              Privy::CardIssuingErc4626VaultFundingSource,
              Privy::CardIssuingTempoEarnVaultFundingSource
            )
          ]
        )
      end
      attr_accessor :funding_sources

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
          asset: String,
          balance_formatted: T.nilable(String),
          brand: T.nilable(String),
          cardholder: Privy::CardIssuingCardholder::OrHash,
          chain_id: String,
          created_at: Integer,
          exp_month: T.nilable(Integer),
          exp_year: T.nilable(Integer),
          funding_sources:
            T::Array[
              T.any(
                Privy::CardIssuingWalletFundingSource::OrHash,
                Privy::CardIssuingErc4626VaultFundingSource::OrHash,
                Privy::CardIssuingTempoEarnVaultFundingSource::OrHash
              )
            ],
          last4: T.nilable(String),
          provider_id: String,
          status: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The stablecoin the card settles in.
        asset:,
        # USD amount the card can spend right now, or null when unavailable.
        balance_formatted:,
        brand:,
        # Cardholder metadata for a card.
        cardholder:,
        # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
        chain_id:,
        # Unix timestamp, in seconds, of when the card was created.
        created_at:,
        # Card expiration month from 1 to 12, or null when unavailable.
        exp_month:,
        # Four-digit card expiration year, or null when unavailable.
        exp_year:,
        # The funding sources the card can spend from, with at most one `selected`.
        funding_sources:,
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
            asset: String,
            balance_formatted: T.nilable(String),
            brand: T.nilable(String),
            cardholder: Privy::CardIssuingCardholder,
            chain_id: String,
            created_at: Integer,
            exp_month: T.nilable(Integer),
            exp_year: T.nilable(Integer),
            funding_sources:
              T::Array[
                T.any(
                  Privy::CardIssuingWalletFundingSource,
                  Privy::CardIssuingErc4626VaultFundingSource,
                  Privy::CardIssuingTempoEarnVaultFundingSource
                )
              ],
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
