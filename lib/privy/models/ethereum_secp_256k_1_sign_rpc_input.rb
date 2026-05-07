# frozen_string_literal: true

module Privy
  module Models
    class EthereumSecp256k1SignRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSecp256k1SignRpcInput::Method]
      required :method_, enum: -> { Privy::EthereumSecp256k1SignRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the EVM `secp256k1_sign` RPC.
      #
      #   @return [Privy::Models::EthereumSecp256k1SignRpcInputParams]
      required :params, -> { Privy::EthereumSecp256k1SignRpcInputParams }

      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::EthereumSecp256k1SignRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::EthereumSecp256k1SignRpcInput::ChainType }

      # @!attribute wallet_id
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(method_:, params:, address: nil, chain_type: nil, wallet_id: nil)
      #   Signs a raw hash on the secp256k1 curve.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSecp256k1SignRpcInput::Method]
      #
      #   @param params [Privy::Models::EthereumSecp256k1SignRpcInputParams] Parameters for the EVM `secp256k1_sign` RPC.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::EthereumSecp256k1SignRpcInput::ChainType]
      #
      #   @param wallet_id [String]

      # @see Privy::Models::EthereumSecp256k1SignRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        SECP256K1_SIGN = :secp256k1_sign

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::EthereumSecp256k1SignRpcInput#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        ETHEREUM = :ethereum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
