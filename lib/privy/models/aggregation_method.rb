# frozen_string_literal: true

module Privy
  module Models
    # The RPC method this aggregation applies to.
    module AggregationMethod
      extend Privy::Internal::Type::Enum

      ETH_SIGN_TRANSACTION = :eth_signTransaction
      ETH_SIGN_USER_OPERATION = :eth_signUserOperation

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
