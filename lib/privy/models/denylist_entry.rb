# frozen_string_literal: true

module Privy
  module Models
    class DenylistEntry < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the denylist entry.
      #
      #   @return [String]
      required :id, String

      # @!attribute rule_type
      #   The type of identifier a denylist rule blocks.
      #
      #   @return [Symbol, String, Privy::Models::DenylistRuleType]
      required :rule_type, union: -> { Privy::DenylistRuleType }

      # @!attribute value
      #   The blocked identifier.
      #
      #   @return [String]
      required :value, String

      # @!method initialize(id:, rule_type:, value:)
      #   A denylist entry for an app.
      #
      #   @param id [String] The ID of the denylist entry.
      #
      #   @param rule_type [Symbol, String, Privy::Models::DenylistRuleType] The type of identifier a denylist rule blocks.
      #
      #   @param value [String] The blocked identifier.
    end
  end
end
