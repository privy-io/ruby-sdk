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

      # @!attribute caip2
      #   A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @return [String, nil]
      optional :caip2, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::EthereumPersonalSignRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::EthereumPersonalSignRpcInput::ChainType }

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
      #   {Privy::Models::EthereumPersonalSignRpcInput} for more details.
      #
      #   Executes the EVM `personal_sign` RPC (EIP-191) to sign a message.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumPersonalSignRpcInput::Method]
      #
      #   @param params [Privy::Models::EthereumPersonalSignRpcInputParams] Parameters for the EVM `personal_sign` RPC.
      #
      #   @param address [String]
      #
      #   @param caip2 [String] A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @param chain_type [Symbol, Privy::Models::EthereumPersonalSignRpcInput::ChainType]
      #
      #   @param signature_options [Privy::Models::SignatureOptions] Options controlling signature production for personal_sign and eth_signTypedData
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
