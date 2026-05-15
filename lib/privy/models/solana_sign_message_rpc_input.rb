# frozen_string_literal: true

module Privy
  module Models
    class SolanaSignMessageRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SolanaSignMessageRpcInput::Method]
      required :method_, enum: -> { Privy::SolanaSignMessageRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the SVM `signMessage` RPC.
      #
      #   @return [Privy::Models::SolanaSignMessageRpcInputParams]
      required :params, -> { Privy::SolanaSignMessageRpcInputParams }

      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::SolanaSignMessageRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::SolanaSignMessageRpcInput::ChainType }

      # @!attribute wallet_id
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(method_:, params:, address: nil, chain_type: nil, wallet_id: nil)
      #   Executes the SVM `signMessage` RPC to sign a message.
      #
      #   @param method_ [Symbol, Privy::Models::SolanaSignMessageRpcInput::Method]
      #
      #   @param params [Privy::Models::SolanaSignMessageRpcInputParams] Parameters for the SVM `signMessage` RPC.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::SolanaSignMessageRpcInput::ChainType]
      #
      #   @param wallet_id [String]

      # @see Privy::Models::SolanaSignMessageRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        SIGN_MESSAGE = :signMessage

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::SolanaSignMessageRpcInput#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        SOLANA = :solana

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
