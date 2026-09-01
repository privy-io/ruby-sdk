# frozen_string_literal: true

module Privy
  module Models
    class NearSignTransactionRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the NEAR `near_signTransaction` RPC.
      #
      #   @return [Privy::Models::NearSignTransactionRpcResponseData]
      required :data, -> { Privy::NearSignTransactionRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::NearSignTransactionRpcResponse::Method]
      required :method_, enum: -> { Privy::NearSignTransactionRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the NEAR `near_signTransaction` RPC.
      #
      #   @param data [Privy::Models::NearSignTransactionRpcResponseData] Data returned by the NEAR `near_signTransaction` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::NearSignTransactionRpcResponse::Method]

      # @see Privy::Models::NearSignTransactionRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        NEAR_SIGN_TRANSACTION = :near_signTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
