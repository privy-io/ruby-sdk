# frozen_string_literal: true

module Privy
  module Models
    class PolicyRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute policy_id
      #
      #   @return [String]
      required :policy_id, String

      # @!method initialize(policy_id:)
      #   Unique ID of the policy to take actions on.
      #
      #   @param policy_id [String]
    end
  end
end
