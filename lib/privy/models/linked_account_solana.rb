# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountSolana < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountSolana::ChainType]
      required :chain_type, enum: -> { Privy::LinkedAccountSolana::ChainType }

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
      #   @return [Symbol, Privy::Models::LinkedAccountSolana::Type]
      required :type, enum: -> { Privy::LinkedAccountSolana::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!attribute wallet_client
      #
      #   @return [Symbol, Privy::Models::LinkedAccountSolana::WalletClient]
      required :wallet_client, enum: -> { Privy::LinkedAccountSolana::WalletClient }

      # @!attribute connector_type
      #
      #   @return [String, nil]
      optional :connector_type, String

      # @!attribute wallet_client_type
      #
      #   @return [String, nil]
      optional :wallet_client_type, String

      # @!method initialize(address:, chain_type:, first_verified_at:, latest_verified_at:, type:, verified_at:, wallet_client:, connector_type: nil, wallet_client_type: nil)
      #   A Solana wallet account linked to the user.
      #
      #   @param address [String]
      #   @param chain_type [Symbol, Privy::Models::LinkedAccountSolana::ChainType]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param type [Symbol, Privy::Models::LinkedAccountSolana::Type]
      #   @param verified_at [Float]
      #   @param wallet_client [Symbol, Privy::Models::LinkedAccountSolana::WalletClient]
      #   @param connector_type [String]
      #   @param wallet_client_type [String]

      # @see Privy::Models::LinkedAccountSolana#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        SOLANA = :solana

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::LinkedAccountSolana#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET = :wallet

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::LinkedAccountSolana#wallet_client
      module WalletClient
        extend Privy::Internal::Type::Enum

        UNKNOWN = :unknown

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
