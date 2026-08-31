# frozen_string_literal: true

module Privy
  module Models
    class AptosRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::AptosRpcInput::Method]
      required :method_, enum: -> { Privy::AptosRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the Aptos `aptos_signTransaction` RPC.
      #
      #   @return [Privy::Models::AptosSignTransactionRpcInputParams]
      required :params, -> { Privy::AptosSignTransactionRpcInputParams }

      # @!method initialize(method_:, params:)
      #   Executes the Aptos `aptos_signTransaction` RPC to sign a legacy single-signer
      #   Ed25519 RawTransaction. The caller is responsible for broadcasting.
      #
      #   @param method_ [Symbol, Privy::Models::AptosRpcInput::Method]
      #
      #   @param params [Privy::Models::AptosSignTransactionRpcInputParams] Parameters for the Aptos `aptos_signTransaction` RPC.

      # @see Privy::Models::AptosRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        APTOS_SIGN_TRANSACTION = :aptos_signTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
