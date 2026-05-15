# frozen_string_literal: true

module Privy
  module Models
    class SmartWalletSiweInput < Privy::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String]
      required :message, String

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!attribute smart_wallet_type
      #   The supported smart wallet providers.
      #
      #   @return [Symbol, Privy::Models::SmartWalletType]
      required :smart_wallet_type, enum: -> { Privy::SmartWalletType }

      # @!attribute smart_wallet_version
      #
      #   @return [String, nil]
      optional :smart_wallet_version, String

      # @!method initialize(message:, signature:, smart_wallet_type:, smart_wallet_version: nil)
      #   Input for a smart wallet SIWE signing ceremony.
      #
      #   @param message [String]
      #
      #   @param signature [String]
      #
      #   @param smart_wallet_type [Symbol, Privy::Models::SmartWalletType] The supported smart wallet providers.
      #
      #   @param smart_wallet_version [String]
    end
  end
end
