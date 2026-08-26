# frozen_string_literal: true

module Privy
  module Models
    class BridgeFiatDepositAccount < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute deposit_instructions
      #   Bank or payment deposit instructions for a fiat deposit account. Shape varies by
      #   source currency.
      #
      #   @return [Privy::Models::FiatDepositInstructions, nil]
      required :deposit_instructions, -> { Privy::FiatDepositInstructions }, nil?: true

      # @!attribute destination
      #   The destination crypto asset and chain for a fiat deposit account.
      #
      #   @return [Privy::Models::FiatDepositAccountDestination]
      required :destination, -> { Privy::FiatDepositAccountDestination }

      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute provider
      #   Discriminator: the fiat deposit account is orchestrated via Bridge.
      #
      #   @return [Symbol, Privy::Models::BridgeFiatDepositAccount::Provider]
      required :provider, enum: -> { Privy::BridgeFiatDepositAccount::Provider }

      # @!attribute source
      #   The source fiat currency and available payment rails for a fiat deposit account.
      #
      #   @return [Privy::Models::FiatDepositAccountSource]
      required :source, -> { Privy::FiatDepositAccountSource }

      # @!attribute status
      #   Activation status of a fiat deposit account.
      #
      #   @return [Symbol, Privy::Models::FiatDepositAccountStatus]
      required :status, enum: -> { Privy::FiatDepositAccountStatus }

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(id:, created_at:, deposit_instructions:, destination:, environment:, provider:, source:, status:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::BridgeFiatDepositAccount} for more details.
      #
      #   A Bridge fiat deposit account linked to a wallet.
      #
      #   @param id [String]
      #
      #   @param created_at [String]
      #
      #   @param deposit_instructions [Privy::Models::FiatDepositInstructions, nil] Bank or payment deposit instructions for a fiat deposit account. Shape varies by
      #
      #   @param destination [Privy::Models::FiatDepositAccountDestination] The destination crypto asset and chain for a fiat deposit account.
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param provider [Symbol, Privy::Models::BridgeFiatDepositAccount::Provider] Discriminator: the fiat deposit account is orchestrated via Bridge.
      #
      #   @param source [Privy::Models::FiatDepositAccountSource] The source fiat currency and available payment rails for a fiat deposit account.
      #
      #   @param status [Symbol, Privy::Models::FiatDepositAccountStatus] Activation status of a fiat deposit account.
      #
      #   @param wallet_id [String]

      # Discriminator: the fiat deposit account is orchestrated via Bridge.
      #
      # @see Privy::Models::BridgeFiatDepositAccount#provider
      module Provider
        extend Privy::Internal::Type::Enum

        BRIDGE = :bridge

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
