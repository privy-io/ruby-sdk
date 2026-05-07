# frozen_string_literal: true

module Privy
  module Models
    class EthereumPersonalSignRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the EVM `personal_sign` RPC.
      #
      #   @return [Privy::Models::EthereumPersonalSignRpcResponseData]
      required :data, -> { Privy::EthereumPersonalSignRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumPersonalSignRpcResponse::Method]
      required :method_, enum: -> { Privy::EthereumPersonalSignRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the EVM `personal_sign` RPC.
      #
      #   @param data [Privy::Models::EthereumPersonalSignRpcResponseData] Data returned by the EVM `personal_sign` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumPersonalSignRpcResponse::Method]

      # @see Privy::Models::EthereumPersonalSignRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        PERSONAL_SIGN = :personal_sign

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
