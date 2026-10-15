# typed: strong

module Privy
  module Models
    # Response for an intent object
    module IntentResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::RpcIntentResponse,
            Privy::TransferIntentResponse,
            Privy::RawSignIntentResponse,
            Privy::WalletIntentResponse,
            Privy::PolicyIntentResponse,
            Privy::RuleIntentResponse,
            Privy::KeyQuorumIntentResponse,
            Privy::ConditionSetItemIntentResponse
          )
        end

      sig { override.returns(T::Array[Privy::IntentResponse::Variants]) }
      def self.variants
      end
    end
  end
end
