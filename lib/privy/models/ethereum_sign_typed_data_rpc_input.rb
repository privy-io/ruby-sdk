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

      # @!attribute caip2
      #   A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @return [String, nil]
      optional :caip2, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::EthereumSignTypedDataRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::EthereumSignTypedDataRpcInput::ChainType }

      # @!attribute signature_options
      #   Options controlling signature production for personal_sign and
      #   eth_signTypedData_v4.
      #
      #   @return [Privy::Models::SignatureOptions, nil]
      optional :signature_options, -> { Privy::SignatureOptions }

      # @!attribute wallet_id
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(method_:, params:, address: nil, caip2: nil, chain_type: nil, signature_options: nil, wallet_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumSignTypedDataRpcInput} for more details.
      #
      #   Executes the EVM `eth_signTypedData_v4` RPC (EIP-712) to sign a typed data
      #   object.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSignTypedDataRpcInput::Method]
      #
      #   @param params [Privy::Models::EthereumSignTypedDataRpcInputParams] Parameters for the EVM `eth_signTypedData_v4` RPC.
      #
      #   @param address [String]
      #
      #   @param caip2 [String] A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @param chain_type [Symbol, Privy::Models::EthereumSignTypedDataRpcInput::ChainType]
      #
      #   @param signature_options [Privy::Models::SignatureOptions] Options controlling signature production for personal_sign and eth_signTypedData
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
