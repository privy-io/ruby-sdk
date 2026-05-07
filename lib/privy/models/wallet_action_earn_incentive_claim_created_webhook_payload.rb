# frozen_string_literal: true

module Privy
  module Models
    class WalletActionEarnIncentiveClaimCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_type
      #   Type of wallet action
      #
      #   @return [Symbol, Privy::Models::WalletActionType]
      required :action_type, enum: -> { Privy::WalletActionType }

      # @!attribute chain
      #   EVM chain name (e.g. "base", "ethereum").
      #
      #   @return [String]
      required :chain, String

      # @!attribute rewards
      #   Claimed reward tokens. Populated after the preparation step fetches from Merkl.
      #
      #   @return [Array<Privy::Models::EarnIncetiveClaimRewardEntry>, nil]
      required :rewards,
               -> {
                 Privy::Internal::Type::ArrayOf[Privy::EarnIncetiveClaimRewardEntry]
               },
               nil?: true

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionEarnIncentiveClaimCreatedWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionEarnIncentiveClaimCreatedWebhookPayload::Status }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionEarnIncentiveClaimCreatedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionEarnIncentiveClaimCreatedWebhookPayload::Type }

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

      # @!method initialize(action_type:, chain:, rewards:, status:, type:, wallet_action_id:, wallet_id:)
      #   Payload for the wallet_action.earn_incentive_claim.created webhook event.
      #
      #   @param action_type [Symbol, Privy::Models::WalletActionType] Type of wallet action
      #
      #   @param chain [String] EVM chain name (e.g. "base", "ethereum").
      #
      #   @param rewards [Array<Privy::Models::EarnIncetiveClaimRewardEntry>, nil] Claimed reward tokens. Populated after the preparation step fetches from Merkl.
      #
      #   @param status [Symbol, Privy::Models::WalletActionEarnIncentiveClaimCreatedWebhookPayload::Status] The status of the wallet action.
      #
      #   @param type [Symbol, Privy::Models::WalletActionEarnIncentiveClaimCreatedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionEarnIncentiveClaimCreatedWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionEarnIncentiveClaimCreatedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_EARN_INCENTIVE_CLAIM_CREATED = :"wallet_action.earn_incentive_claim.created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
