# frozen_string_literal: true

module Privy
  module Models
    class AptosRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the Aptos `aptos_signTransaction` RPC.
      #
      #   @return [Privy::Models::AptosSignTransactionRpcResponseData]
      required :data, -> { Privy::AptosSignTransactionRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::AptosRpcResponse::Method]
      required :method_, enum: -> { Privy::AptosRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the Aptos `aptos_signTransaction` RPC.
      #
      #   @param data [Privy::Models::AptosSignTransactionRpcResponseData] Data returned by the Aptos `aptos_signTransaction` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::AptosRpcResponse::Method]

      # @see Privy::Models::AptosRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        APTOS_SIGN_TRANSACTION = :aptos_signTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
