# frozen_string_literal: true

module Privy
  module Models
    class AllowlistEntry < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute accepted_at
      #
      #   @return [Float, nil]
      required :accepted_at, Float, api_name: :acceptedAt, nil?: true

      # @!attribute app_id
      #
      #   @return [String]
      required :app_id, String, api_name: :appId

      # @!attribute type
      #
      #   @return [String]
      required :type, String

      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!method initialize(id:, accepted_at:, app_id:, type:, value:)
      #   An allowlist entry for an app.
      #
      #   @param id [String]
      #   @param accepted_at [Float, nil]
      #   @param app_id [String]
      #   @param type [String]
      #   @param value [String]
    end
  end
end
