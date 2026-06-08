# frozen_string_literal: true

module Privy
  module Models
    class AnalyticsEventInput < Privy::Internal::Type::BaseModel
      # @!attribute event_name
      #
      #   @return [String]
      required :event_name, String

      # @!attribute client_id
      #
      #   @return [String, nil]
      optional :client_id, String, nil?: true

      # @!attribute payload
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :payload, Privy::Internal::Type::HashOf[Privy::Internal::Type::Unknown]

      # @!method initialize(event_name:, client_id: nil, payload: nil)
      #   The input for capturing an analytics event.
      #
      #   @param event_name [String]
      #   @param client_id [String, nil]
      #   @param payload [Hash{Symbol=>Object}]
    end
  end
end
