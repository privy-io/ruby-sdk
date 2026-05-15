# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningRpcRequest < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [String]
      required :method_, String, api_name: :method

      # @!attribute params
      #
      #   @return [Array<Object>]
      required :params, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!method initialize(method_:, params:)
      #   Raw RPC request to execute with the wallet.
      #
      #   @param method_ [String]
      #   @param params [Array<Object>]
    end
  end
end
