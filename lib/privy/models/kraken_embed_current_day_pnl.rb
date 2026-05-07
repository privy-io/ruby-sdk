# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCurrentDayPnl < Privy::Internal::Type::BaseModel
      # @!attribute pnl
      #
      #   @return [String]
      required :pnl, String

      # @!attribute since
      #
      #   @return [Time]
      required :since, Time

      # @!method initialize(pnl:, since:)
      #   Current day profit and loss for a portfolio, calculated from the most recent
      #   available balance.
      #
      #   @param pnl [String]
      #   @param since [Time]
    end
  end
end
