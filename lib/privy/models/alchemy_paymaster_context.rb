# frozen_string_literal: true

module Privy
  module Models
    class AlchemyPaymasterContext < Privy::Internal::Type::BaseModel
      # @!attribute policy_id
      #
      #   @return [String]
      required :policy_id, String

      # @!method initialize(policy_id:)
      #   The Alchemy paymaster context for a smart wallet network configuration.
      #
      #   @param policy_id [String]
    end
  end
end
