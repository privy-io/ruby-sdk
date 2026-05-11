# frozen_string_literal: true

module Privy
  module Models
    class SolanaSignAndSendTransactionRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @return [String]
      required :caip2, String

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SolanaSignAndSendTransactionRpcInput::Method]
      required :method_, enum: -> { Privy::SolanaSignAndSendTransactionRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the SVM `signAndSendTransaction` RPC.
      #
      #   @return [Privy::Models::SolanaSignAndSendTransactionRpcInputParams]
      required :params, -> { Privy::SolanaSignAndSendTransactionRpcInputParams }

      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::SolanaSignAndSendTransactionRpcInput::ChainType, nil]
      optional :chain_type, enum: -> { Privy::SolanaSignAndSendTransactionRpcInput::ChainType }

      # @!attribute optimistic_broadcast
      #
      #   @return [Boolean, nil]
      optional :optimistic_broadcast, Privy::Internal::Type::Boolean

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

      # @!method initialize(caip2:, method_:, params:, address: nil, chain_type: nil, optimistic_broadcast: nil, reference_id: nil, sponsor: nil, wallet_id: nil)
      #   Executes the SVM `signAndSendTransaction` RPC to sign and broadcast a
      #   transaction.
      #
      #   @param caip2 [String] A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @param method_ [Symbol, Privy::Models::SolanaSignAndSendTransactionRpcInput::Method]
      #
      #   @param params [Privy::Models::SolanaSignAndSendTransactionRpcInputParams] Parameters for the SVM `signAndSendTransaction` RPC.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::SolanaSignAndSendTransactionRpcInput::ChainType]
      #
      #   @param optimistic_broadcast [Boolean]
      #
      #   @param reference_id [String]
      #
      #   @param sponsor [Boolean]
      #
      #   @param wallet_id [String]

      # @see Privy::Models::SolanaSignAndSendTransactionRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        SIGN_AND_SEND_TRANSACTION = :signAndSendTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::SolanaSignAndSendTransactionRpcInput#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        SOLANA = :solana

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
