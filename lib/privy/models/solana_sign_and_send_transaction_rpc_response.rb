# frozen_string_literal: true

module Privy
  module Models
    class SolanaSignAndSendTransactionRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the SVM `signAndSendTransaction` RPC.
      #
      #   @return [Privy::Models::SolanaSignAndSendTransactionRpcResponseData]
      required :data, -> { Privy::SolanaSignAndSendTransactionRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SolanaSignAndSendTransactionRpcResponse::Method]
      required :method_,
               enum: -> {
                 Privy::SolanaSignAndSendTransactionRpcResponse::Method
               },
               api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the SVM `signAndSendTransaction` RPC.
      #
      #   @param data [Privy::Models::SolanaSignAndSendTransactionRpcResponseData] Data returned by the SVM `signAndSendTransaction` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SolanaSignAndSendTransactionRpcResponse::Method]

      # @see Privy::Models::SolanaSignAndSendTransactionRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        SIGN_AND_SEND_TRANSACTION = :signAndSendTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
