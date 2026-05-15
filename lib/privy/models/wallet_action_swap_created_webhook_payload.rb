# frozen_string_literal: true

module Privy
  module Models
    class WalletActionSwapCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_type
      #   Type of wallet action
      #
      #   @return [Symbol, Privy::Models::WalletActionType]
      required :action_type, enum: -> { Privy::WalletActionType }

      # @!attribute caip2
      #   Chain identifier.
      #
      #   @return [String]
      required :caip2, String

      # @!attribute input_amount
      #   Amount of input token in base units. Populated after on-chain confirmation.
      #
      #   @return [String, nil]
      required :input_amount, String, nil?: true

      # @!attribute input_token
      #   Token address being sold.
      #
      #   @return [String]
      required :input_token, String

      # @!attribute output_token
      #   Token address being bought.
      #
      #   @return [String]
      required :output_token, String

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionSwapCreatedWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionSwapCreatedWebhookPayload::Status }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionSwapCreatedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionSwapCreatedWebhookPayload::Type }

      # @!attribute wallet_action_id
      #   The ID of the wallet action.
      #
      #   @return [String]
      required :wallet_action_id, String

      # @!attribute wallet_id
      #   The ID of the wallet involved in the action.
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(action_type:, caip2:, input_amount:, input_token:, output_token:, status:, type:, wallet_action_id:, wallet_id:)
      #   Payload for the wallet_action.swap.created webhook event.
      #
      #   @param action_type [Symbol, Privy::Models::WalletActionType] Type of wallet action
      #
      #   @param caip2 [String] Chain identifier.
      #
      #   @param input_amount [String, nil] Amount of input token in base units. Populated after on-chain confirmation.
      #
      #   @param input_token [String] Token address being sold.
      #
      #   @param output_token [String] Token address being bought.
      #
      #   @param status [Symbol, Privy::Models::WalletActionSwapCreatedWebhookPayload::Status] The status of the wallet action.
      #
      #   @param type [Symbol, Privy::Models::WalletActionSwapCreatedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionSwapCreatedWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionSwapCreatedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_SWAP_CREATED = :"wallet_action.swap.created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
