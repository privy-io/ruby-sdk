# frozen_string_literal: true

module Privy
  module Models
    class EthereumSignUserOperationRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSignUserOperationRpcInput::Method]
      required :method_, enum: -> { Privy::EthereumSignUserOperationRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the EVM `eth_signUserOperation` RPC.
      #
      #   @return [Privy::Models::EthereumSignUserOperationRpcInputParams]
      required :params, -> { Privy::EthereumSignUserOperationRpcInputParams }

      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::EthereumSignUserOperationRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::EthereumSignUserOperationRpcInput::ChainType }

      # @!attribute wallet_id
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(method_:, params:, address: nil, chain_type: nil, wallet_id: nil)
      #   Executes an RPC method to hash and sign a UserOperation.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSignUserOperationRpcInput::Method]
      #
      #   @param params [Privy::Models::EthereumSignUserOperationRpcInputParams] Parameters for the EVM `eth_signUserOperation` RPC.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::EthereumSignUserOperationRpcInput::ChainType]
      #
      #   @param wallet_id [String]

      # @see Privy::Models::EthereumSignUserOperationRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        ETH_SIGN_USER_OPERATION = :eth_signUserOperation

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::EthereumSignUserOperationRpcInput#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        ETHEREUM = :ethereum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
