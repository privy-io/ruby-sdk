# frozen_string_literal: true

module Privy
  module Models
    # Response for an intent object
    #
    # @see Privy::Resources::Intents#list
    module IntentResponse
      extend Privy::Internal::Type::Union

      discriminator :intent_type

      # Response for an RPC intent
      variant :RPC, -> { Privy::RpcIntentResponse }

      # Response for a transfer intent
      variant :TRANSFER, -> { Privy::TransferIntentResponse }

      # Response for a raw sign intent
      variant :RAW_SIGN, -> { Privy::RawSignIntentResponse }

      # Response for a wallet intent
      variant :WALLET, -> { Privy::WalletIntentResponse }

      # Response for a policy intent
      variant :POLICY, -> { Privy::PolicyIntentResponse }

      # Response for a rule intent
      variant :RULE, -> { Privy::RuleIntentResponse }

      # Response for a key quorum intent
      variant :KEY_QUORUM, -> { Privy::KeyQuorumIntentResponse }

      # Response for a condition set item intent
      variant :CONDITION_SET_ITEM, -> { Privy::ConditionSetItemIntentResponse }

      # @!method self.variants
      #   @return [Array(Privy::Models::RpcIntentResponse, Privy::Models::TransferIntentResponse, Privy::Models::RawSignIntentResponse, Privy::Models::WalletIntentResponse, Privy::Models::PolicyIntentResponse, Privy::Models::RuleIntentResponse, Privy::Models::KeyQuorumIntentResponse, Privy::Models::ConditionSetItemIntentResponse)]
    end
  end
end
