# typed: strong

module Privy
  module Models
    class KrakenEmbedPortfolioSummaryPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedPortfolioSummaryPayload,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :available_balance

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :open_orders

      sig { returns(String) }
      attr_accessor :portfolio_value

      sig { returns(Time) }
      attr_accessor :timestamp

      sig { returns(String) }
      attr_accessor :withheld_value

      sig { returns(T.nilable(String)) }
      attr_accessor :cost_basis

      # Current day profit and loss for a portfolio, calculated from the most recent
      # available balance.
      sig { returns(T.nilable(Privy::KrakenEmbedCurrentDayPnl)) }
      attr_reader :current_day_pnl

      sig do
        params(
          current_day_pnl: T.nilable(Privy::KrakenEmbedCurrentDayPnl::OrHash)
        ).void
      end
      attr_writer :current_day_pnl

      sig { returns(T.nilable(String)) }
      attr_accessor :lots_upnl

      # Portfolio summary payload containing balances, value, and profit/loss
      # information.
      sig do
        params(
          available_balance: String,
          currency: String,
          open_orders: String,
          portfolio_value: String,
          timestamp: Time,
          withheld_value: String,
          cost_basis: T.nilable(String),
          current_day_pnl: T.nilable(Privy::KrakenEmbedCurrentDayPnl::OrHash),
          lots_upnl: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        available_balance:,
        currency:,
        open_orders:,
        portfolio_value:,
        timestamp:,
        withheld_value:,
        cost_basis: nil,
        # Current day profit and loss for a portfolio, calculated from the most recent
        # available balance.
        current_day_pnl: nil,
        lots_upnl: nil
      )
      end

      sig do
        override.returns(
          {
            available_balance: String,
            currency: String,
            open_orders: String,
            portfolio_value: String,
            timestamp: Time,
            withheld_value: String,
            cost_basis: T.nilable(String),
            current_day_pnl: T.nilable(Privy::KrakenEmbedCurrentDayPnl),
            lots_upnl: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
