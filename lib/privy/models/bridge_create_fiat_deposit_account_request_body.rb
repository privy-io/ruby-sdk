# frozen_string_literal: true

module Privy
  module Models
    class BridgeCreateFiatDepositAccountRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #   The destination crypto asset and chain for a fiat deposit account.
      #
      #   @return [Privy::Models::FiatDepositAccountDestination]
      required :destination, -> { Privy::FiatDepositAccountDestination }

      # @!attribute provider
      #   Discriminator: the fiat deposit account is orchestrated via Bridge.
      #
      #   @return [Symbol, Privy::Models::BridgeCreateFiatDepositAccountRequestBody::Provider]
      required :provider, enum: -> { Privy::BridgeCreateFiatDepositAccountRequestBody::Provider }

      # @!attribute source
      #   The source fiat currency for a fiat deposit account.
      #
      #   @return [Privy::Models::CreateFiatDepositAccountSource]
      required :source, -> { Privy::CreateFiatDepositAccountSource }

      # @!attribute developer_fee_percent
      #   A developer fee as a percentage string from 0 up to (not including) 100, e.g.
      #   "1.5" for 1.5%.
      #
      #   @return [String, nil]
      optional :developer_fee_percent, String

      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment, nil]
      optional :environment, enum: -> { Privy::Environment }

      # @!method initialize(destination:, provider:, source:, developer_fee_percent: nil, environment: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::BridgeCreateFiatDepositAccountRequestBody} for more details.
      #
      #   Request body for creating a Bridge fiat deposit account linked to a wallet.
      #
      #   @param destination [Privy::Models::FiatDepositAccountDestination] The destination crypto asset and chain for a fiat deposit account.
      #
      #   @param provider [Symbol, Privy::Models::BridgeCreateFiatDepositAccountRequestBody::Provider] Discriminator: the fiat deposit account is orchestrated via Bridge.
      #
      #   @param source [Privy::Models::CreateFiatDepositAccountSource] The source fiat currency for a fiat deposit account.
      #
      #   @param developer_fee_percent [String] A developer fee as a percentage string from 0 up to (not including) 100, e.g. "1
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.

      # Discriminator: the fiat deposit account is orchestrated via Bridge.
      #
      # @see Privy::Models::BridgeCreateFiatDepositAccountRequestBody#provider
      module Provider
        extend Privy::Internal::Type::Enum

        BRIDGE = :bridge

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
