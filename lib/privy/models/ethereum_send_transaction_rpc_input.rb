# frozen_string_literal: true

module Privy
  module Models
    class EthereumSendTransactionRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @return [String]
      required :caip2, String

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSendTransactionRpcInput::Method]
      required :method_, enum: -> { Privy::EthereumSendTransactionRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the EVM `eth_sendTransaction` RPC.
      #
      #   @return [Privy::Models::EthereumSendTransactionRpcInputParams]
      required :params, -> { Privy::EthereumSendTransactionRpcInputParams }

      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::EthereumSendTransactionRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::EthereumSendTransactionRpcInput::ChainType }

      # @!attribute experimental_data_suffix
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String, nil]
      optional :experimental_data_suffix, String

      # @!attribute reference_id
      #
      #   @return [String, nil]
      optional :reference_id, String

      # @!attribute sponsor
      #
      #   @return [Boolean, nil]
      optional :sponsor, Privy::Internal::Type::Boolean

      # @!attribute wallet_id
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(caip2:, method_:, params:, address: nil, chain_type: nil, experimental_data_suffix: nil, reference_id: nil, sponsor: nil, wallet_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumSendTransactionRpcInput} for more details.
      #
      #   Executes the EVM `eth_sendTransaction` RPC to sign and broadcast a transaction.
      #
      #   @param caip2 [String] A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSendTransactionRpcInput::Method]
      #
      #   @param params [Privy::Models::EthereumSendTransactionRpcInputParams] Parameters for the EVM `eth_sendTransaction` RPC.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::EthereumSendTransactionRpcInput::ChainType]
      #
      #   @param experimental_data_suffix [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param reference_id [String]
      #
      #   @param sponsor [Boolean]
      #
      #   @param wallet_id [String]

      # @see Privy::Models::EthereumSendTransactionRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        ETH_SEND_TRANSACTION = :eth_sendTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::EthereumSendTransactionRpcInput#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        ETHEREUM = :ethereum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
