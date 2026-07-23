# frozen_string_literal: true

module Privy
  module Models
    class EthereumSendCallsRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      #
      #   @return [String]
      required :caip2, String

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSendCallsRpcInput::Method]
      required :method_, enum: -> { Privy::EthereumSendCallsRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the `wallet_sendCalls` RPC.
      #
      #   @return [Privy::Models::EthereumSendCallsRpcInputParams]
      required :params, -> { Privy::EthereumSendCallsRpcInputParams }

      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::EthereumSendCallsRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::EthereumSendCallsRpcInput::ChainType }

      # @!attribute experimental_data_suffix
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String, nil]
      optional :experimental_data_suffix, String

      # @!attribute sponsor
      #
      #   @return [Boolean, nil]
      optional :sponsor, Privy::Internal::Type::Boolean

      # @!attribute wallet_id
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(caip2:, method_:, params:, address: nil, chain_type: nil, experimental_data_suffix: nil, sponsor: nil, wallet_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumSendCallsRpcInput} for more details.
      #
      #   Executes the `wallet_sendCalls` RPC (EIP-5792) to batch multiple calls into a
      #   single atomic transaction.
      #
      #   @param caip2 [String] A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSendCallsRpcInput::Method]
      #
      #   @param params [Privy::Models::EthereumSendCallsRpcInputParams] Parameters for the `wallet_sendCalls` RPC.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::EthereumSendCallsRpcInput::ChainType]
      #
      #   @param experimental_data_suffix [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param sponsor [Boolean]
      #
      #   @param wallet_id [String]

      # @see Privy::Models::EthereumSendCallsRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        WALLET_SEND_CALLS = :wallet_sendCalls

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::EthereumSendCallsRpcInput#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        ETHEREUM = :ethereum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
