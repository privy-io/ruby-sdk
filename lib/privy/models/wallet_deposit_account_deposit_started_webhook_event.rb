# frozen_string_literal: true

module Privy
  module Models
    class WalletDepositAccountDepositStartedWebhookEvent < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Details of a fiat deposit that has begun processing into a deposit account.
      #
      #   @return [Privy::Models::DepositStartedData]
      required :data, -> { Privy::DepositStartedData }

      # @!attribute deposit_account_id
      #
      #   @return [String]
      required :deposit_account_id, String

      # @!attribute deposit_type
      #
      #   @return [Symbol, Privy::Models::WalletDepositAccountDepositStartedWebhookEvent::DepositType]
      required :deposit_type, enum: -> { Privy::WalletDepositAccountDepositStartedWebhookEvent::DepositType }

      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute provider
      #   Supported fiat orchestration providers.
      #
      #   @return [Symbol, Privy::Models::OrchestrationProvider]
      required :provider, enum: -> { Privy::OrchestrationProvider }

      # @!attribute provider_deposit_id
      #   The deposit's ID in the provider's system (e.g. Bridge), not a Privy ID.
      #
      #   @return [String]
      required :provider_deposit_id, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletDepositAccountDepositStartedWebhookEvent::Type]
      required :type, enum: -> { Privy::WalletDepositAccountDepositStartedWebhookEvent::Type }

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(data:, deposit_account_id:, deposit_type:, environment:, provider:, provider_deposit_id:, type:, wallet_id:)
      #   @param data [Privy::Models::DepositStartedData] Details of a fiat deposit that has begun processing into a deposit account.
      #
      #   @param deposit_account_id [String]
      #
      #   @param deposit_type [Symbol, Privy::Models::WalletDepositAccountDepositStartedWebhookEvent::DepositType]
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param provider [Symbol, Privy::Models::OrchestrationProvider] Supported fiat orchestration providers.
      #
      #   @param provider_deposit_id [String] The deposit's ID in the provider's system (e.g. Bridge), not a Privy ID.
      #
      #   @param type [Symbol, Privy::Models::WalletDepositAccountDepositStartedWebhookEvent::Type] The type of webhook event.
      #
      #   @param wallet_id [String]

      # @see Privy::Models::WalletDepositAccountDepositStartedWebhookEvent#deposit_type
      module DepositType
        extend Privy::Internal::Type::Enum

        FIAT = :fiat

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletDepositAccountDepositStartedWebhookEvent#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_DEPOSIT_ACCOUNT_DEPOSIT_STARTED = :"wallet.deposit_account.deposit_started"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
