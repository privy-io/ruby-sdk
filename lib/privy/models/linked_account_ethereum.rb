# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountEthereum < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountEthereum::ChainType]
      required :chain_type, enum: -> { Privy::LinkedAccountEthereum::ChainType }

      # @!attribute first_verified_at
      #
      #   @return [Float, nil]
      required :first_verified_at, Float, nil?: true

      # @!attribute latest_verified_at
      #
      #   @return [Float, nil]
      required :latest_verified_at, Float, nil?: true

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountEthereum::Type]
      required :type, enum: -> { Privy::LinkedAccountEthereum::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!attribute wallet_client
      #
      #   @return [Symbol, Privy::Models::LinkedAccountEthereum::WalletClient]
      required :wallet_client, enum: -> { Privy::LinkedAccountEthereum::WalletClient }

      # @!attribute chain_id
      #
      #   @return [String, nil]
      optional :chain_id, String

      # @!attribute connector_type
      #
      #   @return [String, nil]
      optional :connector_type, String

      # @!attribute wallet_client_type
      #
      #   @return [String, nil]
      optional :wallet_client_type, String

      # @!method initialize(address:, chain_type:, first_verified_at:, latest_verified_at:, type:, verified_at:, wallet_client:, chain_id: nil, connector_type: nil, wallet_client_type: nil)
      #   An Ethereum wallet account linked to the user.
      #
      #   @param address [String]
      #   @param chain_type [Symbol, Privy::Models::LinkedAccountEthereum::ChainType]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param type [Symbol, Privy::Models::LinkedAccountEthereum::Type]
      #   @param verified_at [Float]
      #   @param wallet_client [Symbol, Privy::Models::LinkedAccountEthereum::WalletClient]
      #   @param chain_id [String]
      #   @param connector_type [String]
      #   @param wallet_client_type [String]

      # @see Privy::Models::LinkedAccountEthereum#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        ETHEREUM = :ethereum

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::LinkedAccountEthereum#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET = :wallet

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::LinkedAccountEthereum#wallet_client
      module WalletClient
        extend Privy::Internal::Type::Enum

        UNKNOWN = :unknown

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
