# frozen_string_literal: true

module Privy
  module Models
    class EthereumPersonalSignRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumPersonalSignRpcInput::Method]
      required :method_, enum: -> { Privy::EthereumPersonalSignRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the EVM `personal_sign` RPC.
      #
      #   @return [Privy::Models::EthereumPersonalSignRpcInputParams]
      required :params, -> { Privy::EthereumPersonalSignRpcInputParams }

      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::EthereumPersonalSignRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::EthereumPersonalSignRpcInput::ChainType }

      # @!attribute wallet_id
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(method_:, params:, address: nil, chain_type: nil, wallet_id: nil)
      #   Executes the EVM `personal_sign` RPC (EIP-191) to sign a message.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumPersonalSignRpcInput::Method]
      #
      #   @param params [Privy::Models::EthereumPersonalSignRpcInputParams] Parameters for the EVM `personal_sign` RPC.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::EthereumPersonalSignRpcInput::ChainType]
      #
      #   @param wallet_id [String]

      # @see Privy::Models::EthereumPersonalSignRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        PERSONAL_SIGN = :personal_sign

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::EthereumPersonalSignRpcInput#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        ETHEREUM = :ethereum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
