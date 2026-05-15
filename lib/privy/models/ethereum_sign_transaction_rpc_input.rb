# frozen_string_literal: true

module Privy
  module Models
    class EthereumSignTransactionRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSignTransactionRpcInput::Method]
      required :method_, enum: -> { Privy::EthereumSignTransactionRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the EVM `eth_signTransaction` RPC.
      #
      #   @return [Privy::Models::EthereumSignTransactionRpcInputParams]
      required :params, -> { Privy::EthereumSignTransactionRpcInputParams }

      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::EthereumSignTransactionRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::EthereumSignTransactionRpcInput::ChainType }

      # @!attribute wallet_id
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(method_:, params:, address: nil, chain_type: nil, wallet_id: nil)
      #   Executes the EVM `eth_signTransaction` RPC to sign a transaction.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSignTransactionRpcInput::Method]
      #
      #   @param params [Privy::Models::EthereumSignTransactionRpcInputParams] Parameters for the EVM `eth_signTransaction` RPC.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::EthereumSignTransactionRpcInput::ChainType]
      #
      #   @param wallet_id [String]

      # @see Privy::Models::EthereumSignTransactionRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        ETH_SIGN_TRANSACTION = :eth_signTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::EthereumSignTransactionRpcInput#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        ETHEREUM = :ethereum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
