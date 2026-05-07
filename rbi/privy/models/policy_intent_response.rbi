# typed: strong

module Privy
  module Models
    class PolicyIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::PolicyIntentResponse, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::PolicyIntentResponse::IntentType::TaggedSymbol) }
      attr_accessor :intent_type

      # The original policy update request that would be sent to the policy endpoint
      sig { returns(Privy::PolicyIntentResponse::RequestDetails) }
      attr_reader :request_details

      sig do
        params(
          request_details: Privy::PolicyIntentResponse::RequestDetails::OrHash
        ).void
      end
      attr_writer :request_details

      # Result of policy update execution (only present if status is 'executed' or
      # 'failed')
      sig { returns(T.nilable(Privy::BaseActionResult)) }
      attr_reader :action_result

      sig { params(action_result: Privy::BaseActionResult::OrHash).void }
      attr_writer :action_result

      # A policy for controlling wallet operations.
      sig { returns(T.nilable(Privy::Policy)) }
      attr_reader :current_resource_data

      sig { params(current_resource_data: Privy::Policy::OrHash).void }
      attr_writer :current_resource_data

      # Response for a policy intent
      sig do
        params(
          intent_type: Privy::PolicyIntentResponse::IntentType::OrSymbol,
          request_details: Privy::PolicyIntentResponse::RequestDetails::OrHash,
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::Policy::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # The original policy update request that would be sent to the policy endpoint
        request_details:,
        # Result of policy update execution (only present if status is 'executed' or
        # 'failed')
        action_result: nil,
        # A policy for controlling wallet operations.
        current_resource_data: nil
      )
      end

      sig do
        override.returns(
          {
            intent_type: Privy::PolicyIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::PolicyIntentResponse::RequestDetails,
            action_result: Privy::BaseActionResult,
            current_resource_data: Privy::Policy
          }
        )
      end
      def to_hash
      end

      module IntentType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::PolicyIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POLICY =
          T.let(:POLICY, Privy::PolicyIntentResponse::IntentType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::PolicyIntentResponse::IntentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class RequestDetails < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::PolicyIntentResponse::RequestDetails,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(Privy::PolicyIntentResponse::RequestDetails::Body) }
        attr_reader :body

        sig do
          params(
            body: Privy::PolicyIntentResponse::RequestDetails::Body::OrHash
          ).void
        end
        attr_writer :body

        sig do
          returns(
            Privy::PolicyIntentResponse::RequestDetails::Method::TaggedSymbol
          )
        end
        attr_accessor :method_

        sig { returns(String) }
        attr_accessor :url

        # The original policy update request that would be sent to the policy endpoint
        sig do
          params(
            body: Privy::PolicyIntentResponse::RequestDetails::Body::OrHash,
            method_:
              Privy::PolicyIntentResponse::RequestDetails::Method::OrSymbol,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(body:, method_:, url:)
        end

        sig do
          override.returns(
            {
              body: Privy::PolicyIntentResponse::RequestDetails::Body,
              method_:
                Privy::PolicyIntentResponse::RequestDetails::Method::TaggedSymbol,
              url: String
            }
          )
        end
        def to_hash
        end

        class Body < Privy::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Privy::PolicyIntentResponse::RequestDetails::Body,
                Privy::Internal::AnyHash
              )
            end

          # Name to assign to policy.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
          # null to remove the current owner.
          sig { returns(T.nilable(Privy::OwnerInput::Variants)) }
          attr_accessor :owner

          # The key quorum ID to set as the owner of the resource. If you provide this, do
          # not specify an owner.
          sig { returns(T.nilable(String)) }
          attr_accessor :owner_id

          sig { returns(T.nilable(T::Array[Privy::PolicyRuleRequestBody])) }
          attr_reader :rules

          sig do
            params(rules: T::Array[Privy::PolicyRuleRequestBody::OrHash]).void
          end
          attr_writer :rules

          sig do
            params(
              name: String,
              owner:
                T.nilable(
                  T.any(
                    Privy::OwnerInputUser::OrHash,
                    Privy::OwnerInputPublicKey::OrHash
                  )
                ),
              owner_id: T.nilable(String),
              rules: T::Array[Privy::PolicyRuleRequestBody::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Name to assign to policy.
            name: nil,
            # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
            # null to remove the current owner.
            owner: nil,
            # The key quorum ID to set as the owner of the resource. If you provide this, do
            # not specify an owner.
            owner_id: nil,
            rules: nil
          )
          end

          sig do
            override.returns(
              {
                name: String,
                owner: T.nilable(Privy::OwnerInput::Variants),
                owner_id: T.nilable(String),
                rules: T::Array[Privy::PolicyRuleRequestBody]
              }
            )
          end
          def to_hash
          end
        end

        module Method
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Privy::PolicyIntentResponse::RequestDetails::Method)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PATCH =
            T.let(
              :PATCH,
              Privy::PolicyIntentResponse::RequestDetails::Method::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::PolicyIntentResponse::RequestDetails::Method::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
