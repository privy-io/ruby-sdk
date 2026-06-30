# typed: strong

module Privy
  module Models
    class KrakenEmbedGetPortfolioSummaryResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetPortfolioSummaryResult,
            Privy::Internal::AnyHash
          )
        end

      # Portfolio summary payload containing balances, value, and profit/loss
      # information.
      sig { returns(T.nilable(Privy::KrakenEmbedPortfolioSummaryPayload)) }
      attr_reader :result

      sig do
        params(
          result: T.nilable(Privy::KrakenEmbedPortfolioSummaryPayload::OrHash)
        ).void
      end
      attr_writer :result

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :error

      sig { params(error: T::Array[String]).void }
      attr_writer :error

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :errors

      sig { params(errors: T::Array[String]).void }
      attr_writer :errors

      # Kraken API response envelope for portfolio summary, containing optional errors
      # and the result payload.
      sig do
        params(
          result: T.nilable(Privy::KrakenEmbedPortfolioSummaryPayload::OrHash),
          error: T::Array[String],
          errors: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Portfolio summary payload containing balances, value, and profit/loss
        # information.
        result:,
        error: nil,
        errors: nil
      )
      end

      sig do
        override.returns(
          {
            result: T.nilable(Privy::KrakenEmbedPortfolioSummaryPayload),
            error: T::Array[String],
            errors: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
