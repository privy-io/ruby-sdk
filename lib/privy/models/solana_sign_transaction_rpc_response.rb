# frozen_string_literal: true

module Privy
  module Models
    class SolanaSignTransactionRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the SVM `signTransaction` RPC.
      #
      #   @return [Privy::Models::SolanaSignTransactionRpcResponseData]
      required :data, -> { Privy::SolanaSignTransactionRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SolanaSignTransactionRpcResponse::Method]
      required :method_, enum: -> { Privy::SolanaSignTransactionRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the SVM `signTransaction` RPC.
      #
      #   @param data [Privy::Models::SolanaSignTransactionRpcResponseData] Data returned by the SVM `signTransaction` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SolanaSignTransactionRpcResponse::Method]

      # @see Privy::Models::SolanaSignTransactionRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        SIGN_TRANSACTION = :signTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
