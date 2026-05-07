# frozen_string_literal: true

module Privy
  module Models
    # The Spark network.
    module SparkNetwork
      extend Privy::Internal::Type::Enum

      MAINNET = :MAINNET
      REGTEST = :REGTEST

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
