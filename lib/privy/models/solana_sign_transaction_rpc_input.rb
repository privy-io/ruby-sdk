# frozen_string_literal: true

module Privy
  module Models
    class SolanaSignTransactionRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SolanaSignTransactionRpcInput::Method]
      required :method_, enum: -> { Privy::SolanaSignTransactionRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the SVM `signTransaction` RPC.
      #
      #   @return [Privy::Models::SolanaSignTransactionRpcInputParams]
      required :params, -> { Privy::SolanaSignTransactionRpcInputParams }

      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::SolanaSignTransactionRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::SolanaSignTransactionRpcInput::ChainType }

      # @!attribute wallet_id
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(method_:, params:, address: nil, chain_type: nil, wallet_id: nil)
      #   Executes the SVM `signTransaction` RPC to sign a transaction.
      #
      #   @param method_ [Symbol, Privy::Models::SolanaSignTransactionRpcInput::Method]
      #
      #   @param params [Privy::Models::SolanaSignTransactionRpcInputParams] Parameters for the SVM `signTransaction` RPC.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::SolanaSignTransactionRpcInput::ChainType]
      #
      #   @param wallet_id [String]

      # @see Privy::Models::SolanaSignTransactionRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        SIGN_TRANSACTION = :signTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::SolanaSignTransactionRpcInput#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        SOLANA = :solana

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
