# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountSmartWallet < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute first_verified_at
      #
      #   @return [Float, nil]
      required :first_verified_at, Float, nil?: true

      # @!attribute latest_verified_at
      #
      #   @return [Float, nil]
      required :latest_verified_at, Float, nil?: true

      # @!attribute smart_wallet_type
      #   The supported smart wallet providers.
      #
      #   @return [Symbol, Privy::Models::SmartWalletType]
      required :smart_wallet_type, enum: -> { Privy::SmartWalletType }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountSmartWallet::Type]
      required :type, enum: -> { Privy::LinkedAccountSmartWallet::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!attribute smart_wallet_version
      #
      #   @return [String, nil]
      optional :smart_wallet_version, String

      # @!method initialize(address:, first_verified_at:, latest_verified_at:, smart_wallet_type:, type:, verified_at:, smart_wallet_version: nil)
      #   A smart wallet account linked to the user.
      #
      #   @param address [String]
      #
      #   @param first_verified_at [Float, nil]
      #
      #   @param latest_verified_at [Float, nil]
      #
      #   @param smart_wallet_type [Symbol, Privy::Models::SmartWalletType] The supported smart wallet providers.
      #
      #   @param type [Symbol, Privy::Models::LinkedAccountSmartWallet::Type]
      #
      #   @param verified_at [Float]
      #
      #   @param smart_wallet_version [String]

      # @see Privy::Models::LinkedAccountSmartWallet#type
      module Type
        extend Privy::Internal::Type::Enum

        SMART_WALLET = :smart_wallet

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
