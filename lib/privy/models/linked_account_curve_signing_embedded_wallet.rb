# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountCurveSigningEmbeddedWallet < Privy::Internal::Type::BaseModel
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
      #   The wallet chain types that support curve-based signing.
      #
      #   @return [Symbol, Privy::Models::CurveSigningChainType]
      required :chain_type, enum: -> { Privy::CurveSigningChainType }

      # @!attribute connector_type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet::ConnectorType]
      required :connector_type, enum: -> { Privy::LinkedAccountCurveSigningEmbeddedWallet::ConnectorType }

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
      #   @return [Symbol, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet::Type]
      required :type, enum: -> { Privy::LinkedAccountCurveSigningEmbeddedWallet::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!attribute wallet_client
      #
      #   @return [Symbol, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet::WalletClient]
      required :wallet_client, enum: -> { Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClient }

      # @!attribute wallet_client_type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet::WalletClientType]
      required :wallet_client_type,
               enum: -> { Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClientType }

      # @!attribute wallet_index
      #
      #   @return [Float]
      required :wallet_index, Float

      # @!method initialize(id:, address:, chain_id:, chain_type:, connector_type:, delegated:, first_verified_at:, imported:, latest_verified_at:, public_key:, recovery_method:, type:, verified_at:, wallet_client:, wallet_client_type:, wallet_index:)
      #   A curve signing embedded wallet account linked to the user.
      #
      #   @param id [String, nil]
      #
      #   @param address [String]
      #
      #   @param chain_id [String]
      #
      #   @param chain_type [Symbol, Privy::Models::CurveSigningChainType] The wallet chain types that support curve-based signing.
      #
      #   @param connector_type [Symbol, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet::ConnectorType]
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
      #   @param type [Symbol, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet::Type]
      #
      #   @param verified_at [Float]
      #
      #   @param wallet_client [Symbol, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet::WalletClient]
      #
      #   @param wallet_client_type [Symbol, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet::WalletClientType]
      #
      #   @param wallet_index [Float]

      # @see Privy::Models::LinkedAccountCurveSigningEmbeddedWallet#connector_type
      module ConnectorType
        extend Privy::Internal::Type::Enum

        EMBEDDED = :embedded

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::LinkedAccountCurveSigningEmbeddedWallet#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET = :wallet

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::LinkedAccountCurveSigningEmbeddedWallet#wallet_client
      module WalletClient
        extend Privy::Internal::Type::Enum

        PRIVY = :privy

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::LinkedAccountCurveSigningEmbeddedWallet#wallet_client_type
      module WalletClientType
        extend Privy::Internal::Type::Enum

        PRIVY = :privy

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
