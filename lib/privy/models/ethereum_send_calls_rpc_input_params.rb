# frozen_string_literal: true

module Privy
  module Models
    class EthereumSendCallsRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute calls
      #
      #   @return [Array<Privy::Models::EthereumSendCallsCall>]
      required :calls, -> { Privy::Internal::Type::ArrayOf[Privy::EthereumSendCallsCall] }

      # @!method initialize(calls:)
      #   Parameters for the `wallet_sendCalls` RPC.
      #
      #   @param calls [Array<Privy::Models::EthereumSendCallsCall>]
    end
  end
end
