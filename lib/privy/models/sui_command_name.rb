# frozen_string_literal: true

module Privy
  module Models
    # SUI transaction commands allowlist for raw_sign endpoint policy evaluation
    module SuiCommandName
      extend Privy::Internal::Type::Enum

      TRANSFER_OBJECTS = :TransferObjects
      SPLIT_COINS = :SplitCoins
      MERGE_COINS = :MergeCoins

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
