# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountSolanaEmbeddedWallet < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      required :id, String, nil?: true

      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute chain_id
      #
      #   @return [String]
      required :chain_id, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountSolanaEmbeddedWallet::ChainType]
      required :chain_type, enum: -> { Privy::LinkedAccountSolanaEmbeddedWallet::ChainType }

      # @!attribute connector_type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountSolanaEmbeddedWallet::ConnectorType]
      required :connector_type, enum: -> { Privy::LinkedAccountSolanaEmbeddedWallet::ConnectorType }

      # @!attribute delegated
      #
      #   @return [Boolean]
      required :delegated, Privy::Internal::Type::Boolean

      # @!attribute first_verified_at
      #
      #   @return [Float, nil]
      required :first_verified_at, Float, nil?: true

      # @!attribute imported
      #
      #   @return [Boolean]
      required :imported, Privy::Internal::Type::Boolean

      # @!attribute latest_verified_at
      #
      #   @return [Float, nil]
      required :latest_verified_at, Float, nil?: true

      # @!attribute public_key
      #
      #   @return [String]
      required :public_key, String

      # @!attribute recovery_method
      #   The method used to recover an embedded wallet account.
      #
      #   @return [Symbol, Privy::Models::EmbeddedWalletRecoveryMethod]
      required :recovery_method, enum: -> { Privy::EmbeddedWalletRecoveryMethod }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountSolanaEmbeddedWallet::Type]
      required :type, enum: -> { Privy::LinkedAccountSolanaEmbeddedWallet::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!attribute wallet_client
      #
      #   @return [Symbol, Privy::Models::LinkedAccountSolanaEmbeddedWallet::WalletClient]
      required :wallet_client, enum: -> { Privy::LinkedAccountSolanaEmbeddedWallet::WalletClient }

      # @!attribute wallet_client_type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountSolanaEmbeddedWallet::WalletClientType]
      required :wallet_client_type, enum: -> { Privy::LinkedAccountSolanaEmbeddedWallet::WalletClientType }

      # @!attribute wallet_index
      #
      #   @return [Float]
      required :wallet_index, Float

      # @!method initialize(id:, address:, chain_id:, chain_type:, connector_type:, delegated:, first_verified_at:, imported:, latest_verified_at:, public_key:, recovery_method:, type:, verified_at:, wallet_client:, wallet_client_type:, wallet_index:)
      #   A Solana embedded wallet account linked to the user.
      #
      #   @param id [String, nil]
      #
      #   @param address [String]
      #
      #   @param chain_id [String]
      #
      #   @param chain_type [Symbol, Privy::Models::LinkedAccountSolanaEmbeddedWallet::ChainType]
      #
      #   @param connector_type [Symbol, Privy::Models::LinkedAccountSolanaEmbeddedWallet::ConnectorType]
      #
      #   @param delegated [Boolean]
      #
      #   @param first_verified_at [Float, nil]
      #
      #   @param imported [Boolean]
      #
      #   @param latest_verified_at [Float, nil]
      #
      #   @param public_key [String]
      #
      #   @param recovery_method [Symbol, Privy::Models::EmbeddedWalletRecoveryMethod] The method used to recover an embedded wallet account.
      #
      #   @param type [Symbol, Privy::Models::LinkedAccountSolanaEmbeddedWallet::Type]
      #
      #   @param verified_at [Float]
      #
      #   @param wallet_client [Symbol, Privy::Models::LinkedAccountSolanaEmbeddedWallet::WalletClient]
      #
      #   @param wallet_client_type [Symbol, Privy::Models::LinkedAccountSolanaEmbeddedWallet::WalletClientType]
      #
      #   @param wallet_index [Float]

      # @see Privy::Models::LinkedAccountSolanaEmbeddedWallet#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        SOLANA = :solana

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::LinkedAccountSolanaEmbeddedWallet#connector_type
      module ConnectorType
        extend Privy::Internal::Type::Enum

        EMBEDDED = :embedded

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::LinkedAccountSolanaEmbeddedWallet#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET = :wallet

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::LinkedAccountSolanaEmbeddedWallet#wallet_client
      module WalletClient
        extend Privy::Internal::Type::Enum

        PRIVY = :privy

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::LinkedAccountSolanaEmbeddedWallet#wallet_client_type
      module WalletClientType
        extend Privy::Internal::Type::Enum

        PRIVY = :privy

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
