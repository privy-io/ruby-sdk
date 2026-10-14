# frozen_string_literal: true

module Privy
  module Models
    class DenylistEntryDeleteRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the denylist entry to remove.
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   Input for removing a denylist entry.
      #
      #   @param id [String] The ID of the denylist entry to remove.
    end
  end
end
