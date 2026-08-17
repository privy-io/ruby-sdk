# frozen_string_literal: true

module Privy
  module Models
    class XrplRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::XrplRpcInput::Method]
      required :method_, enum: -> { Privy::XrplRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the XRPL `xrpl_signTransaction` RPC.
      #
      #   @return [Privy::Models::XrplSignTransactionRpcInputParams]
      required :params, -> { Privy::XrplSignTransactionRpcInputParams }

      # @!method initialize(method_:, params:)
      #   Executes the XRPL `xrpl_signTransaction` RPC to sign a transaction. The caller
      #   is responsible for broadcasting.
      #
      #   @param method_ [Symbol, Privy::Models::XrplRpcInput::Method]
      #
      #   @param params [Privy::Models::XrplSignTransactionRpcInputParams] Parameters for the XRPL `xrpl_signTransaction` RPC.

      # @see Privy::Models::XrplRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        XRPL_SIGN_TRANSACTION = :xrpl_signTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
