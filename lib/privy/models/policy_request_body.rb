# frozen_string_literal: true

module Privy
  module Models
    class PolicyRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute policy_id
      #   A unique identifier for a policy.
      #
      #   @return [String]
      required :policy_id, String

      # @!method initialize(policy_id:)
      #   Unique ID of the policy to take actions on.
      #
      #   @param policy_id [String] A unique identifier for a policy.
    end
  end
end
