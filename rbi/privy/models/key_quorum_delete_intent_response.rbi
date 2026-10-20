# typed: strong

module Privy
  module Models
    class KeyQuorumDeleteIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::KeyQuorumDeleteIntentResponse, Privy::Internal::AnyHash)
        end

      sig do
        returns(Privy::KeyQuorumDeleteIntentResponse::IntentType::TaggedSymbol)
      end
      attr_accessor :intent_type

      # Request details for deleting a key quorum via intent.
      sig { returns(Privy::KeyQuorumIntentDeleteRequestDetails) }
      attr_reader :request_details

      sig do
        params(
          request_details: Privy::KeyQuorumIntentDeleteRequestDetails::OrHash
        ).void
      end
      attr_writer :request_details

      # Result of key quorum delete execution (only present if status is 'executed' or
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

      # Response for a key quorum delete intent
      sig do
        params(
          intent_type:
            Privy::KeyQuorumDeleteIntentResponse::IntentType::OrSymbol,
          request_details: Privy::KeyQuorumIntentDeleteRequestDetails::OrHash,
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::KeyQuorum::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # Request details for deleting a key quorum via intent.
        request_details:,
        # Result of key quorum delete execution (only present if status is 'executed' or
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
              Privy::KeyQuorumDeleteIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::KeyQuorumIntentDeleteRequestDetails,
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
            T.all(Symbol, Privy::KeyQuorumDeleteIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KEY_QUORUM =
          T.let(
            :KEY_QUORUM,
            Privy::KeyQuorumDeleteIntentResponse::IntentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KeyQuorumDeleteIntentResponse::IntentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
