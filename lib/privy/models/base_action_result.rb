# frozen_string_literal: true

module Privy
  module Models
    class BaseActionResult < Privy::Internal::Type::BaseModel
      # @!attribute executed_at
      #   Unix timestamp when the action was executed
      #
      #   @return [Float]
      required :executed_at, Float

      # @!attribute status_code
      #   HTTP status code from the action execution
      #
      #   @return [Float]
      required :status_code, Float

      # @!attribute authorized_by_display_name
      #   Display name of the key quorum that authorized execution
      #
      #   @return [String, nil]
      optional :authorized_by_display_name, String

      # @!attribute authorized_by_id
      #   ID of the key quorum that authorized execution
      #
      #   @return [String, nil]
      optional :authorized_by_id, String

      # @!method initialize(executed_at:, status_code:, authorized_by_display_name: nil, authorized_by_id: nil)
      #   Common fields for intent action execution results.
      #
      #   @param executed_at [Float] Unix timestamp when the action was executed
      #
      #   @param status_code [Float] HTTP status code from the action execution
      #
      #   @param authorized_by_display_name [String] Display name of the key quorum that authorized execution
      #
      #   @param authorized_by_id [String] ID of the key quorum that authorized execution
    end
  end
end
