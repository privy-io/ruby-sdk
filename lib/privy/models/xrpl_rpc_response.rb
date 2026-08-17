# frozen_string_literal: true

module Privy
  module Models
    class XrplRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the XRPL `xrpl_signTransaction` RPC.
      #
      #   @return [Privy::Models::XrplSignTransactionRpcResponseData]
      required :data, -> { Privy::XrplSignTransactionRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::XrplRpcResponse::Method]
      required :method_, enum: -> { Privy::XrplRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the XRPL `xrpl_signTransaction` RPC.
      #
      #   @param data [Privy::Models::XrplSignTransactionRpcResponseData] Data returned by the XRPL `xrpl_signTransaction` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::XrplRpcResponse::Method]

      # @see Privy::Models::XrplRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        XRPL_SIGN_TRANSACTION = :xrpl_signTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
