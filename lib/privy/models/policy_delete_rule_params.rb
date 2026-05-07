# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Policies#delete_rule
    class PolicyDeleteRuleParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute policy_id
      #
      #   @return [String]
      required :policy_id, String

      # @!attribute rule_id
      #
      #   @return [String]
      required :rule_id, String

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

      # @!method initialize(policy_id:, rule_id:, privy_authorization_signature: nil, privy_request_expiry: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::PolicyDeleteRuleParams} for more details.
      #
      #   @param policy_id [String]
      #
      #   @param rule_id [String]
      #
      #   @param privy_authorization_signature [String] Request authorization signature. If multiple signatures are required, they shoul
      #
      #   @param privy_request_expiry [String] Request expiry. Value is a Unix timestamp in milliseconds representing the deadl
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
