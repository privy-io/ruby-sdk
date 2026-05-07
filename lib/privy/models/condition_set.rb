# frozen_string_literal: true

module Privy
  module Models
    class ConditionSet < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Unique ID of the created condition set. This will be the primary identifier when
      #   using the condition set in the future.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Unix timestamp of when the condition set was created in milliseconds.
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute name
      #   Name of the condition set.
      #
      #   @return [String]
      required :name, String

      # @!attribute owner_id
      #   A unique identifier for a key quorum.
      #
      #   @return [String]
      required :owner_id, String

      # @!method initialize(id:, created_at:, name:, owner_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::ConditionSet} for more details.
      #
      #   A condition set for grouping related condition values.
      #
      #   @param id [String] Unique ID of the created condition set. This will be the primary identifier when
      #
      #   @param created_at [Float] Unix timestamp of when the condition set was created in milliseconds.
      #
      #   @param name [String] Name of the condition set.
      #
      #   @param owner_id [String] A unique identifier for a key quorum.
    end
  end
end
