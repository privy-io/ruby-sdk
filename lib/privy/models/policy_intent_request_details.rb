# frozen_string_literal: true

module Privy
  module Models
    class PolicyIntentRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute body
      #
      #   @return [Privy::Models::PolicyIntentRequestDetails::Body]
      required :body, -> { Privy::PolicyIntentRequestDetails::Body }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::PolicyIntentRequestDetails::Method]
      required :method_, enum: -> { Privy::PolicyIntentRequestDetails::Method }, api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(body:, method_:, url:)
      #   Request details for a policy intent.
      #
      #   @param body [Privy::Models::PolicyIntentRequestDetails::Body]
      #   @param method_ [Symbol, Privy::Models::PolicyIntentRequestDetails::Method]
      #   @param url [String]

      # @see Privy::Models::PolicyIntentRequestDetails#body
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
        #   {Privy::Models::PolicyIntentRequestDetails::Body} for more details.
        #
        #   @param name [String] Name to assign to policy.
        #
        #   @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] The owner of the resource, specified as a Privy user ID, a P-256 public key, or
        #
        #   @param owner_id [String, nil] The key quorum ID to set as the owner of the resource. If you provide this, do n
        #
        #   @param rules [Array<Privy::Models::PolicyRuleRequestBody>]
      end

      # @see Privy::Models::PolicyIntentRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        PATCH = :PATCH

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
