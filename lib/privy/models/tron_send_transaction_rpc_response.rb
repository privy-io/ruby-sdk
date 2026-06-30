# frozen_string_literal: true

module Privy
  module Models
    class TronSendTransactionRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the Tron `tron_sendTransaction` RPC.
      #
      #   @return [Privy::Models::TronSendTransactionRpcResponseData]
      required :data, -> { Privy::TronSendTransactionRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::TronSendTransactionRpcResponse::Method]
      required :method_, enum: -> { Privy::TronSendTransactionRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the Tron `tron_sendTransaction` RPC.
      #
      #   @param data [Privy::Models::TronSendTransactionRpcResponseData] Data returned by the Tron `tron_sendTransaction` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::TronSendTransactionRpcResponse::Method]

      # @see Privy::Models::TronSendTransactionRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        TRON_SEND_TRANSACTION = :tron_sendTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
