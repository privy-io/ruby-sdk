# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetPortfolioSummaryResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Privy::Models::KrakenEmbedGetPortfolioSummaryResponse::Data]
      required :data, -> { Privy::KrakenEmbedGetPortfolioSummaryResponse::Data }

      # @!method initialize(data:)
      #   High-level summary of a user's portfolio including total value, available
      #   balance, and unrealized P&L.
      #
      #   @param data [Privy::Models::KrakenEmbedGetPortfolioSummaryResponse::Data]

      # @see Privy::Models::KrakenEmbedGetPortfolioSummaryResponse#data
      class Data < Privy::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [Privy::Models::KrakenEmbedGetPortfolioSummaryResponse::Data::Result, nil]
        required :result, -> { Privy::KrakenEmbedGetPortfolioSummaryResponse::Data::Result }, nil?: true

        # @!attribute error
        #
        #   @return [Array<String>, nil]
        optional :error, Privy::Internal::Type::ArrayOf[String]

        # @!attribute errors
        #
        #   @return [Array<String>, nil]
        optional :errors, Privy::Internal::Type::ArrayOf[String]

        # @!method initialize(result:, error: nil, errors: nil)
        #   @param result [Privy::Models::KrakenEmbedGetPortfolioSummaryResponse::Data::Result, nil]
        #   @param error [Array<String>]
        #   @param errors [Array<String>]

        # @see Privy::Models::KrakenEmbedGetPortfolioSummaryResponse::Data#result
        class Result < Privy::Internal::Type::BaseModel
          # @!attribute available_balance
          #
          #   @return [String]
          required :available_balance, String

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!attribute open_orders
          #
          #   @return [String]
          required :open_orders, String

          # @!attribute portfolio_value
          #
          #   @return [String]
          required :portfolio_value, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute withheld_value
          #
          #   @return [String]
          required :withheld_value, String

          # @!attribute cost_basis
          #
          #   @return [String, nil]
          optional :cost_basis, String, nil?: true

          # @!attribute current_day_pnl
          #   Current day profit and loss for a portfolio, calculated from the most recent
          #   available balance.
          #
          #   @return [Privy::Models::KrakenEmbedCurrentDayPnl, nil]
          optional :current_day_pnl, -> { Privy::KrakenEmbedCurrentDayPnl }, nil?: true

          # @!attribute lots_upnl
          #
          #   @return [String, nil]
          optional :lots_upnl, String, nil?: true

          # @!method initialize(available_balance:, currency:, open_orders:, portfolio_value:, timestamp:, withheld_value:, cost_basis: nil, current_day_pnl: nil, lots_upnl: nil)
          #   Some parameter documentations has been truncated, see
          #   {Privy::Models::KrakenEmbedGetPortfolioSummaryResponse::Data::Result} for more
          #   details.
          #
          #   @param available_balance [String]
          #
          #   @param currency [String]
          #
          #   @param open_orders [String]
          #
          #   @param portfolio_value [String]
          #
          #   @param timestamp [Time]
          #
          #   @param withheld_value [String]
          #
          #   @param cost_basis [String, nil]
          #
          #   @param current_day_pnl [Privy::Models::KrakenEmbedCurrentDayPnl, nil] Current day profit and loss for a portfolio, calculated from the most recent ava
          #
          #   @param lots_upnl [String, nil]
        end
      end
    end
  end
end
