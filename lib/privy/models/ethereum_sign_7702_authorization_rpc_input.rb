# frozen_string_literal: true

module Privy
  module Models
    class EthereumSign7702AuthorizationRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSign7702AuthorizationRpcInput::Method]
      required :method_, enum: -> { Privy::EthereumSign7702AuthorizationRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the EVM `eth_sign7702Authorization` RPC.
      #
      #   @return [Privy::Models::EthereumSign7702AuthorizationRpcInputParams]
      required :params, -> { Privy::EthereumSign7702AuthorizationRpcInputParams }

      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::EthereumSign7702AuthorizationRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::EthereumSign7702AuthorizationRpcInput::ChainType }

      # @!attribute wallet_id
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(method_:, params:, address: nil, chain_type: nil, wallet_id: nil)
      #   Signs an EIP-7702 authorization.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSign7702AuthorizationRpcInput::Method]
      #
      #   @param params [Privy::Models::EthereumSign7702AuthorizationRpcInputParams] Parameters for the EVM `eth_sign7702Authorization` RPC.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::EthereumSign7702AuthorizationRpcInput::ChainType]
      #
      #   @param wallet_id [String]

      # @see Privy::Models::EthereumSign7702AuthorizationRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        ETH_SIGN7702_AUTHORIZATION = :eth_sign7702Authorization

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::EthereumSign7702AuthorizationRpcInput#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        ETHEREUM = :ethereum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
