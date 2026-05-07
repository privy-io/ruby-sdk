# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountCrossApp < Privy::Internal::Type::BaseModel
      # @!attribute embedded_wallets
      #
      #   @return [Array<Privy::Models::CrossAppEmbeddedWallet>]
      required :embedded_wallets, -> { Privy::Internal::Type::ArrayOf[Privy::CrossAppEmbeddedWallet] }

      # @!attribute first_verified_at
      #
      #   @return [Float, nil]
      required :first_verified_at, Float, nil?: true

      # @!attribute latest_verified_at
      #
      #   @return [Float, nil]
      required :latest_verified_at, Float, nil?: true

      # @!attribute provider_app_id
      #
      #   @return [String]
      required :provider_app_id, String

      # @!attribute smart_wallets
      #
      #   @return [Array<Privy::Models::CrossAppSmartWallet>]
      required :smart_wallets, -> { Privy::Internal::Type::ArrayOf[Privy::CrossAppSmartWallet] }

      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountCrossApp::Type]
      required :type, enum: -> { Privy::LinkedAccountCrossApp::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(embedded_wallets:, first_verified_at:, latest_verified_at:, provider_app_id:, smart_wallets:, subject:, type:, verified_at:)
      #   A cross-app account linked to the user.
      #
      #   @param embedded_wallets [Array<Privy::Models::CrossAppEmbeddedWallet>]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param provider_app_id [String]
      #   @param smart_wallets [Array<Privy::Models::CrossAppSmartWallet>]
      #   @param subject [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountCrossApp::Type]
      #   @param verified_at [Float]

      # @see Privy::Models::LinkedAccountCrossApp#type
      module Type
        extend Privy::Internal::Type::Enum

        CROSS_APP = :cross_app

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
