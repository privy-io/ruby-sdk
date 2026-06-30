# frozen_string_literal: true

module Privy
  module Models
    class TronSignTransactionRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::TronSignTransactionRpcInput::Method]
      required :method_, enum: -> { Privy::TronSignTransactionRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the Tron `tron_signTransaction` RPC.
      #
      #   @return [Privy::Models::TronSignTransactionRpcInputParams]
      required :params, -> { Privy::TronSignTransactionRpcInputParams }

      # @!method initialize(method_:, params:)
      #   Executes the Tron `tron_signTransaction` RPC to sign a transaction. The caller
      #   is responsible for broadcasting.
      #
      #   @param method_ [Symbol, Privy::Models::TronSignTransactionRpcInput::Method]
      #
      #   @param params [Privy::Models::TronSignTransactionRpcInputParams] Parameters for the Tron `tron_signTransaction` RPC.

      # @see Privy::Models::TronSignTransactionRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        TRON_SIGN_TRANSACTION = :tron_signTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
