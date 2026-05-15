# frozen_string_literal: true

module Privy
  module Models
    # An embedded wallet account with an ID.
    module LinkedAccountEmbeddedWalletWithID
      extend Privy::Internal::Type::Union

      # An Ethereum embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet }

      # A Solana embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet }

      # A Bitcoin SegWit embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet }

      # A Bitcoin Taproot embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet }

      # A curve signing embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet }

      class LinkedAccountEthereumEmbeddedWallet < Privy::Models::LinkedAccountEthereumEmbeddedWallet
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute recovery_method
        #
        #   @return [Symbol, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet::RecoveryMethod]
        required :recovery_method,
                 enum: -> { Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet::RecoveryMethod }

        # @!method initialize(id:, recovery_method:)
        #   An Ethereum embedded wallet account linked to the user.
        #
        #   @param id [String]
        #   @param recovery_method [Symbol, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet::RecoveryMethod]

        module RecoveryMethod
          extend Privy::Internal::Type::Enum

          PRIVY_V2 = :"privy-v2"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class LinkedAccountSolanaEmbeddedWallet < Privy::Models::LinkedAccountSolanaEmbeddedWallet
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute recovery_method
        #
        #   @return [Symbol, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet::RecoveryMethod]
        required :recovery_method,
                 enum: -> { Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet::RecoveryMethod }

        # @!method initialize(id:, recovery_method:)
        #   A Solana embedded wallet account linked to the user.
        #
        #   @param id [String]
        #   @param recovery_method [Symbol, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet::RecoveryMethod]

        module RecoveryMethod
          extend Privy::Internal::Type::Enum

          PRIVY_V2 = :"privy-v2"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class LinkedAccountBitcoinSegwitEmbeddedWallet < Privy::Models::LinkedAccountBitcoinSegwitEmbeddedWallet
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute recovery_method
        #
        #   @return [Symbol, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet::RecoveryMethod]
        required :recovery_method,
                 enum: -> { Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet::RecoveryMethod }

        # @!method initialize(id:, recovery_method:)
        #   A Bitcoin SegWit embedded wallet account linked to the user.
        #
        #   @param id [String]
        #   @param recovery_method [Symbol, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet::RecoveryMethod]

        module RecoveryMethod
          extend Privy::Internal::Type::Enum

          PRIVY_V2 = :"privy-v2"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class LinkedAccountBitcoinTaprootEmbeddedWallet < Privy::Models::LinkedAccountBitcoinTaprootEmbeddedWallet
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute recovery_method
        #
        #   @return [Symbol, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet::RecoveryMethod]
        required :recovery_method,
                 enum: -> { Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet::RecoveryMethod }

        # @!method initialize(id:, recovery_method:)
        #   A Bitcoin Taproot embedded wallet account linked to the user.
        #
        #   @param id [String]
        #   @param recovery_method [Symbol, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet::RecoveryMethod]

        module RecoveryMethod
          extend Privy::Internal::Type::Enum

          PRIVY_V2 = :"privy-v2"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class LinkedAccountCurveSigningEmbeddedWallet < Privy::Models::LinkedAccountCurveSigningEmbeddedWallet
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute recovery_method
        #
        #   @return [Symbol, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet::RecoveryMethod]
        required :recovery_method,
                 enum: -> { Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet::RecoveryMethod }

        # @!method initialize(id:, recovery_method:)
        #   A curve signing embedded wallet account linked to the user.
        #
        #   @param id [String]
        #   @param recovery_method [Symbol, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet::RecoveryMethod]

        module RecoveryMethod
          extend Privy::Internal::Type::Enum

          PRIVY_V2 = :"privy-v2"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet, Privy::Models::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet)]
    end
  end
end
