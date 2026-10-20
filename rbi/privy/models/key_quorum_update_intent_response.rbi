# typed: strong

module Privy
  module Models
    class KeyQuorumUpdateIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::KeyQuorumUpdateIntentResponse, Privy::Internal::AnyHash)
        end

      sig do
        returns(Privy::KeyQuorumUpdateIntentResponse::IntentType::TaggedSymbol)
      end
      attr_accessor :intent_type

      # Request details for a key quorum intent.
      sig { returns(Privy::KeyQuorumIntentRequestDetails) }
      attr_reader :request_details

      sig do
        params(
          request_details: Privy::KeyQuorumIntentRequestDetails::OrHash
        ).void
      end
      attr_writer :request_details

      # Result of key quorum update execution (only present if status is 'executed' or
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

      # Response for a key quorum update intent
      sig do
        params(
          intent_type:
            Privy::KeyQuorumUpdateIntentResponse::IntentType::OrSymbol,
          request_details: Privy::KeyQuorumIntentRequestDetails::OrHash,
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::KeyQuorum::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # Request details for a key quorum intent.
        request_details:,
        # Result of key quorum update execution (only present if status is 'executed' or
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
              Privy::KeyQuorumUpdateIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::KeyQuorumIntentRequestDetails,
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
            T.all(Symbol, Privy::KeyQuorumUpdateIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KEY_QUORUM =
          T.let(
            :KEY_QUORUM,
            Privy::KeyQuorumUpdateIntentResponse::IntentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KeyQuorumUpdateIntentResponse::IntentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
