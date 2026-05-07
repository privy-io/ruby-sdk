# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Policies#update
    class PolicyUpdateParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute policy_id
      #
      #   @return [String]
      required :policy_id, String

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

      # @!attribute privy_authorization_signature
      #   Request authorization signature. If multiple signatures are required, they
      #   should be comma separated.
      #
      #   @return [String, nil]
      optional :privy_authorization_signature, String

      # @!attribute privy_request_expiry
      #   Request expiry. Value is a Unix timestamp in milliseconds representing the
      #   deadline by which the request must be processed.
      #
      #   @return [String, nil]
      optional :privy_request_expiry, String

      # @!method initialize(policy_id:, name: nil, owner: nil, owner_id: nil, rules: nil, privy_authorization_signature: nil, privy_request_expiry: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::PolicyUpdateParams} for more details.
      #
      #   @param policy_id [String]
      #
      #   @param name [String] Name to assign to policy.
      #
      #   @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #
      #   @param owner_id [String, nil] The key quorum ID to set as the owner of the resource. If you provide this, do n
      #
      #   @param rules [Array<Privy::Models::PolicyRuleRequestBody>]
      #
      #   @param privy_authorization_signature [String] Request authorization signature. If multiple signatures are required, they shoul
      #
      #   @param privy_request_expiry [String] Request expiry. Value is a Unix timestamp in milliseconds representing the deadl
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
