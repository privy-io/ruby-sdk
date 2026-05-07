# frozen_string_literal: true

module Privy
  module Models
    class AllowlistDeletionResponse < Privy::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String]
      required :message, String

      # @!method initialize(message:)
      #   Confirmation response for deleting an allowlist entry.
      #
      #   @param message [String]
    end
  end
end
