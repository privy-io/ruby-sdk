# frozen_string_literal: true

module Privy
  module Models
    # A string-encoded boolean query parameter on including current day profit and
    # loss.
    module KrakenEmbedIncludeCurrentDayPnlQueryParam
      extend Privy::Internal::Type::Enum

      TRUE = :true
      FALSE = :false

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
