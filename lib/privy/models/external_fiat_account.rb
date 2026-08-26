# frozen_string_literal: true

module Privy
  module Models
    class ExternalFiatAccount < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_owner_name
      #
      #   @return [String]
      required :account_owner_name, String

      # @!attribute account_type
      #
      #   @return [String]
      required :account_type, String

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute provider
      #   Discriminator: the external fiat account is orchestrated via Bridge.
      #
      #   @return [Symbol, Privy::Models::ExternalFiatAccount::Provider]
      required :provider, enum: -> { Privy::ExternalFiatAccount::Provider }

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!attribute bank_name
      #
      #   @return [String, nil]
      optional :bank_name, String

      # @!attribute last_4
      #
      #   @return [String, nil]
      optional :last_4, String

      # @!method initialize(id:, account_owner_name:, account_type:, created_at:, currency:, environment:, provider:, user_id:, bank_name: nil, last_4: nil)
      #   A Bridge external fiat account linked to a user.
      #
      #   @param id [String]
      #
      #   @param account_owner_name [String]
      #
      #   @param account_type [String]
      #
      #   @param created_at [String]
      #
      #   @param currency [String]
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param provider [Symbol, Privy::Models::ExternalFiatAccount::Provider] Discriminator: the external fiat account is orchestrated via Bridge.
      #
      #   @param user_id [String]
      #
      #   @param bank_name [String]
      #
      #   @param last_4 [String]

      # Discriminator: the external fiat account is orchestrated via Bridge.
      #
      # @see Privy::Models::ExternalFiatAccount#provider
      module Provider
        extend Privy::Internal::Type::Enum

        BRIDGE = :bridge

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
