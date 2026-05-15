# frozen_string_literal: true

module Privy
  module Models
    class EthereumSignTypedDataRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSignTypedDataRpcInput::Method]
      required :method_, enum: -> { Privy::EthereumSignTypedDataRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the EVM `eth_signTypedData_v4` RPC.
      #
      #   @return [Privy::Models::EthereumSignTypedDataRpcInputParams]
      required :params, -> { Privy::EthereumSignTypedDataRpcInputParams }

      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::EthereumSignTypedDataRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::EthereumSignTypedDataRpcInput::ChainType }

      # @!attribute wallet_id
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(method_:, params:, address: nil, chain_type: nil, wallet_id: nil)
      #   Executes the EVM `eth_signTypedData_v4` RPC (EIP-712) to sign a typed data
      #   object.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSignTypedDataRpcInput::Method]
      #
      #   @param params [Privy::Models::EthereumSignTypedDataRpcInputParams] Parameters for the EVM `eth_signTypedData_v4` RPC.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::EthereumSignTypedDataRpcInput::ChainType]
      #
      #   @param wallet_id [String]

      # @see Privy::Models::EthereumSignTypedDataRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        ETH_SIGN_TYPED_DATA_V4 = :eth_signTypedData_v4

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::EthereumSignTypedDataRpcInput#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        ETHEREUM = :ethereum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
