# frozen_string_literal: true

module Privy
  module Models
    class WalletDepositAccountDepositFailedWebhookEvent < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Details of a fiat deposit that failed to convert and was refunded to the sender.
      #
      #   @return [Privy::Models::DepositFailedData]
      required :data, -> { Privy::DepositFailedData }

      # @!attribute deposit_account_id
      #
      #   @return [String]
      required :deposit_account_id, String

      # @!attribute deposit_type
      #
      #   @return [Symbol, Privy::Models::WalletDepositAccountDepositFailedWebhookEvent::DepositType]
      required :deposit_type, enum: -> { Privy::WalletDepositAccountDepositFailedWebhookEvent::DepositType }

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

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletDepositAccountDepositFailedWebhookEvent::Type]
      required :type, enum: -> { Privy::WalletDepositAccountDepositFailedWebhookEvent::Type }

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!attribute provider_deposit_id
      #   The deposit's ID in the provider's system (e.g. Bridge), when the provider
      #   assigned one.
      #
      #   @return [String, nil]
      optional :provider_deposit_id, String

      # @!method initialize(data:, deposit_account_id:, deposit_type:, environment:, provider:, type:, wallet_id:, provider_deposit_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletDepositAccountDepositFailedWebhookEvent} for more details.
      #
      #   @param data [Privy::Models::DepositFailedData] Details of a fiat deposit that failed to convert and was refunded to the sender.
      #
      #   @param deposit_account_id [String]
      #
      #   @param deposit_type [Symbol, Privy::Models::WalletDepositAccountDepositFailedWebhookEvent::DepositType]
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param provider [Symbol, Privy::Models::OrchestrationProvider] Supported fiat orchestration providers.
      #
      #   @param type [Symbol, Privy::Models::WalletDepositAccountDepositFailedWebhookEvent::Type] The type of webhook event.
      #
      #   @param wallet_id [String]
      #
      #   @param provider_deposit_id [String] The deposit's ID in the provider's system (e.g. Bridge), when the provider assig

      # @see Privy::Models::WalletDepositAccountDepositFailedWebhookEvent#deposit_type
      module DepositType
        extend Privy::Internal::Type::Enum

        FIAT = :fiat

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletDepositAccountDepositFailedWebhookEvent#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_DEPOSIT_ACCOUNT_DEPOSIT_FAILED = :"wallet.deposit_account.deposit_failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
