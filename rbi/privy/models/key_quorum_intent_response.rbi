# typed: strong

module Privy
  module Models
    class KeyQuorumIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::KeyQuorumIntentResponse, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::KeyQuorumIntentResponse::IntentType::TaggedSymbol) }
      attr_accessor :intent_type

      # The original key quorum request. Method is PATCH (update) or DELETE (delete).
      sig { returns(Privy::KeyQuorumIntentRequestDetailsUnion::Variants) }
      attr_accessor :request_details

      # Result of key quorum execution (only present if status is 'executed' or
      # 'failed')
      sig { returns(T.nilable(Privy::BaseActionResult)) }
      attr_reader :action_result

      sig { params(action_result: Privy::BaseActionResult::OrHash).void }
      attr_writer :action_result

      # A key quorum for authorizing wallet operations.
      sig { returns(T.nilable(Privy::KeyQuorum)) }
      attr_reader :current_resource_data

      sig { params(current_resource_data: Privy::KeyQuorum::OrHash).void }
      attr_writer :current_resource_data

      # Response for a key quorum intent
      sig do
        params(
          intent_type: Privy::KeyQuorumIntentResponse::IntentType::OrSymbol,
          request_details:
            T.any(
              Privy::KeyQuorumIntentRequestDetails::OrHash,
              Privy::KeyQuorumIntentDeleteRequestDetails::OrHash
            ),
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::KeyQuorum::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # The original key quorum request. Method is PATCH (update) or DELETE (delete).
        request_details:,
        # Result of key quorum execution (only present if status is 'executed' or
        # 'failed')
        action_result: nil,
        # A key quorum for authorizing wallet operations.
        current_resource_data: nil
      )
      end

      sig do
        override.returns(
          {
            intent_type:
              Privy::KeyQuorumIntentResponse::IntentType::TaggedSymbol,
            request_details:
              Privy::KeyQuorumIntentRequestDetailsUnion::Variants,
            action_result: Privy::BaseActionResult,
            current_resource_data: Privy::KeyQuorum
          }
        )
      end
      def to_hash
      end

      module IntentType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::KeyQuorumIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KEY_QUORUM =
          T.let(
            :KEY_QUORUM,
            Privy::KeyQuorumIntentResponse::IntentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::KeyQuorumIntentResponse::IntentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
