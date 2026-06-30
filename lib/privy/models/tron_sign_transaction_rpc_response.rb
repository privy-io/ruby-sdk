# frozen_string_literal: true

module Privy
  module Models
    class TronSignTransactionRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the Tron `tron_signTransaction` RPC.
      #
      #   @return [Privy::Models::TronSignTransactionRpcResponseData]
      required :data, -> { Privy::TronSignTransactionRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::TronSignTransactionRpcResponse::Method]
      required :method_, enum: -> { Privy::TronSignTransactionRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the Tron `tron_signTransaction` RPC.
      #
      #   @param data [Privy::Models::TronSignTransactionRpcResponseData] Data returned by the Tron `tron_signTransaction` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::TronSignTransactionRpcResponse::Method]

      # @see Privy::Models::TronSignTransactionRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        TRON_SIGN_TRANSACTION = :tron_signTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
