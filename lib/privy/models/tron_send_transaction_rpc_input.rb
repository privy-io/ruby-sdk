# frozen_string_literal: true

module Privy
  module Models
    class TronSendTransactionRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::TronSendTransactionRpcInput::Method]
      required :method_, enum: -> { Privy::TronSendTransactionRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the Tron `tron_sendTransaction` RPC.
      #
      #   @return [Privy::Models::TronSendTransactionRpcInputParams]
      required :params, -> { Privy::TronSendTransactionRpcInputParams }

      # @!attribute caip2
      #   A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @return [String, nil]
      optional :caip2, String

      # @!method initialize(method_:, params:, caip2: nil)
      #   Executes the Tron `tron_sendTransaction` RPC to sign and broadcast a
      #   transaction.
      #
      #   @param method_ [Symbol, Privy::Models::TronSendTransactionRpcInput::Method]
      #
      #   @param params [Privy::Models::TronSendTransactionRpcInputParams] Parameters for the Tron `tron_sendTransaction` RPC.
      #
      #   @param caip2 [String] A valid CAIP-2 chain ID (e.g. 'eip155:1').

      # @see Privy::Models::TronSendTransactionRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        TRON_SEND_TRANSACTION = :tron_sendTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
