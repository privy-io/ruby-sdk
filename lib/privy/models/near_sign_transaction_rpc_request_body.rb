# frozen_string_literal: true

module Privy
  module Models
    class NearSignTransactionRpcRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::NearSignTransactionRpcRequestBody::Method]
      required :method_, enum: -> { Privy::NearSignTransactionRpcRequestBody::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the NEAR `near_signTransaction` RPC.
      #
      #   @return [Privy::Models::NearSignTransactionRpcRequestBodyParams]
      required :params, -> { Privy::NearSignTransactionRpcRequestBodyParams }

      # @!method initialize(method_:, params:)
      #   Executes the NEAR `near_signTransaction` RPC to sign a transaction. The caller
      #   is responsible for broadcasting.
      #
      #   @param method_ [Symbol, Privy::Models::NearSignTransactionRpcRequestBody::Method]
      #
      #   @param params [Privy::Models::NearSignTransactionRpcRequestBodyParams] Parameters for the NEAR `near_signTransaction` RPC.

      # @see Privy::Models::NearSignTransactionRpcRequestBody#method_
      module Method
        extend Privy::Internal::Type::Enum

        NEAR_SIGN_TRANSACTION = :near_signTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
