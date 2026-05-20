# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedToggleAutoEarnQueryParams < Privy::Internal::Type::BaseModel
      # @!attribute want_enabled
      #
      #   @return [Boolean]
      required :want_enabled, Privy::Internal::Type::Boolean

      # @!method initialize(want_enabled:)
      #   Query parameters for toggling Auto-Earn.
      #
      #   @param want_enabled [Boolean]
    end
  end
end
