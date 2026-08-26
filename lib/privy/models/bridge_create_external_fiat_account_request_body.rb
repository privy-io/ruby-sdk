# frozen_string_literal: true

module Privy
  module Models
    class BridgeCreateExternalFiatAccountRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute account
      #   Bank account details. The `type` field discriminates which shape applies.
      #
      #   @return [Privy::Models::ExternalFiatAccountUsData, Privy::Models::ExternalFiatAccountGBData, Privy::Models::ExternalFiatAccountPixData, Privy::Models::ExternalFiatAccountIbanData, Privy::Models::ExternalFiatAccountSwiftData]
      required :account, union: -> { Privy::ExternalFiatAccountData }

      # @!attribute account_owner_name
      #
      #   @return [String]
      required :account_owner_name, String

      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!attribute provider
      #   Discriminator: the external fiat account is orchestrated via Bridge.
      #
      #   @return [Symbol, Privy::Models::BridgeCreateExternalFiatAccountRequestBody::Provider]
      required :provider, enum: -> { Privy::BridgeCreateExternalFiatAccountRequestBody::Provider }

      # @!attribute address
      #   Physical address associated with an external fiat account.
      #
      #   @return [Privy::Models::ExternalFiatAccountAddress, nil]
      optional :address, -> { Privy::ExternalFiatAccountAddress }

      # @!attribute bank_name
      #
      #   @return [String, nil]
      optional :bank_name, String

      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment, nil]
      optional :environment, enum: -> { Privy::Environment }

      # @!method initialize(account:, account_owner_name:, currency:, provider:, address: nil, bank_name: nil, environment: nil)
      #   Request body for creating a Bridge external fiat account.
      #
      #   @param account [Privy::Models::ExternalFiatAccountUsData, Privy::Models::ExternalFiatAccountGBData, Privy::Models::ExternalFiatAccountPixData, Privy::Models::ExternalFiatAccountIbanData, Privy::Models::ExternalFiatAccountSwiftData] Bank account details. The `type` field discriminates which shape applies.
      #
      #   @param account_owner_name [String]
      #
      #   @param currency [String]
      #
      #   @param provider [Symbol, Privy::Models::BridgeCreateExternalFiatAccountRequestBody::Provider] Discriminator: the external fiat account is orchestrated via Bridge.
      #
      #   @param address [Privy::Models::ExternalFiatAccountAddress] Physical address associated with an external fiat account.
      #
      #   @param bank_name [String]
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.

      # Discriminator: the external fiat account is orchestrated via Bridge.
      #
      # @see Privy::Models::BridgeCreateExternalFiatAccountRequestBody#provider
      module Provider
        extend Privy::Internal::Type::Enum

        BRIDGE = :bridge

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
