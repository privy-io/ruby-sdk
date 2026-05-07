# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#update_policy
    class PolicyIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::PolicyIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::PolicyIntentResponse::IntentType }

      # @!attribute request_details
      #   The original policy update request that would be sent to the policy endpoint
      #
      #   @return [Privy::Models::PolicyIntentResponse::RequestDetails]
      required :request_details, -> { Privy::PolicyIntentResponse::RequestDetails }

      # @!attribute action_result
      #   Result of policy update execution (only present if status is 'executed' or
      #   'failed')
      #
      #   @return [Privy::Models::BaseActionResult, nil]
      optional :action_result, -> { Privy::BaseActionResult }

      # @!attribute current_resource_data
      #   A policy for controlling wallet operations.
      #
      #   @return [Privy::Models::Policy, nil]
      optional :current_resource_data, -> { Privy::Policy }

      # @!method initialize(intent_type:, request_details:, action_result: nil, current_resource_data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::PolicyIntentResponse} for more details.
      #
      #   Response for a policy intent
      #
      #   @param intent_type [Symbol, Privy::Models::PolicyIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::PolicyIntentResponse::RequestDetails] The original policy update request that would be sent to the policy endpoint
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of policy update execution (only present if status is 'executed' or 'fail
      #
      #   @param current_resource_data [Privy::Models::Policy] A policy for controlling wallet operations.

      module IntentType
        extend Privy::Internal::Type::Enum

        POLICY = :POLICY

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class RequestDetails < Privy::Internal::Type::BaseModel
        # @!attribute body
        #
        #   @return [Privy::Models::PolicyIntentResponse::RequestDetails::Body]
        required :body, -> { Privy::PolicyIntentResponse::RequestDetails::Body }

        # @!attribute method_
        #
        #   @return [Symbol, Privy::Models::PolicyIntentResponse::RequestDetails::Method]
        required :method_, enum: -> { Privy::PolicyIntentResponse::RequestDetails::Method }, api_name: :method

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!method initialize(body:, method_:, url:)
        #   The original policy update request that would be sent to the policy endpoint
        #
        #   @param body [Privy::Models::PolicyIntentResponse::RequestDetails::Body]
        #   @param method_ [Symbol, Privy::Models::PolicyIntentResponse::RequestDetails::Method]
        #   @param url [String]

        # @see Privy::Models::PolicyIntentResponse::RequestDetails#body
        class Body < Privy::Internal::Type::BaseModel
          # @!attribute name
          #   Name to assign to policy.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute owner
          #   The owner of the resource, specified as a Privy user ID, a P-256 public key, or
          #   null to remove the current owner.
          #
          #   @return [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil]
          optional :owner, union: -> { Privy::OwnerInput }, nil?: true

          # @!attribute owner_id
          #   The key quorum ID to set as the owner of the resource. If you provide this, do
          #   not specify an owner.
          #
          #   @return [String, nil]
          optional :owner_id, String, nil?: true

          # @!attribute rules
          #
          #   @return [Array<Privy::Models::PolicyRuleRequestBody>, nil]
          optional :rules, -> { Privy::Internal::Type::ArrayOf[Privy::PolicyRuleRequestBody] }

          # @!method initialize(name: nil, owner: nil, owner_id: nil, rules: nil)
          #   Some parameter documentations has been truncated, see
          #   {Privy::Models::PolicyIntentResponse::RequestDetails::Body} for more details.
          #
          #   @param name [String] Name to assign to policy.
          #
          #   @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] The owner of the resource, specified as a Privy user ID, a P-256 public key, or
          #
          #   @param owner_id [String, nil] The key quorum ID to set as the owner of the resource. If you provide this, do n
          #
          #   @param rules [Array<Privy::Models::PolicyRuleRequestBody>]
        end

        # @see Privy::Models::PolicyIntentResponse::RequestDetails#method_
        module Method
          extend Privy::Internal::Type::Enum

          PATCH = :PATCH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
