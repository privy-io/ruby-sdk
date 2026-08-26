# frozen_string_literal: true

module Privy
  module Models
    class WalletDepositAccountDepositCompletedWebhookEvent < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Details of a fiat deposit that has finished converting and been delivered to the
      #   wallet.
      #
      #   @return [Privy::Models::DepositCompletedData]
      required :data, -> { Privy::DepositCompletedData }

      # @!attribute deposit_account_id
      #
      #   @return [String]
      required :deposit_account_id, String

      # @!attribute deposit_type
      #
      #   @return [Symbol, Privy::Models::WalletDepositAccountDepositCompletedWebhookEvent::DepositType]
      required :deposit_type, enum: -> { Privy::WalletDepositAccountDepositCompletedWebhookEvent::DepositType }

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
      #   @return [Symbol, Privy::Models::WalletDepositAccountDepositCompletedWebhookEvent::Type]
      required :type, enum: -> { Privy::WalletDepositAccountDepositCompletedWebhookEvent::Type }

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(data:, deposit_account_id:, deposit_type:, environment:, provider:, provider_deposit_id:, type:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletDepositAccountDepositCompletedWebhookEvent} for more
      #   details.
      #
      #   @param data [Privy::Models::DepositCompletedData] Details of a fiat deposit that has finished converting and been delivered to the
      #
      #   @param deposit_account_id [String]
      #
      #   @param deposit_type [Symbol, Privy::Models::WalletDepositAccountDepositCompletedWebhookEvent::DepositType]
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param provider [Symbol, Privy::Models::OrchestrationProvider] Supported fiat orchestration providers.
      #
      #   @param provider_deposit_id [String] The deposit's ID in the provider's system (e.g. Bridge), not a Privy ID.
      #
      #   @param type [Symbol, Privy::Models::WalletDepositAccountDepositCompletedWebhookEvent::Type] The type of webhook event.
      #
      #   @param wallet_id [String]

      # @see Privy::Models::WalletDepositAccountDepositCompletedWebhookEvent#deposit_type
      module DepositType
        extend Privy::Internal::Type::Enum

        FIAT = :fiat

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletDepositAccountDepositCompletedWebhookEvent#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_DEPOSIT_ACCOUNT_DEPOSIT_COMPLETED = :"wallet.deposit_account.deposit_completed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
