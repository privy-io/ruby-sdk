# frozen_string_literal: true

module Privy
  module Models
    class GasSponsorshipConfiguration < Privy::Internal::Type::BaseModel
      # @!attribute configured_networks
      #
      #   @return [Array<String>]
      required :configured_networks, Privy::Internal::Type::ArrayOf[String]

      # @!attribute require_app_secret
      #
      #   @return [Boolean]
      required :require_app_secret, Privy::Internal::Type::Boolean

      # @!attribute sponsorship_enabled
      #
      #   @return [Boolean]
      required :sponsorship_enabled, Privy::Internal::Type::Boolean

      # @!method initialize(configured_networks:, require_app_secret:, sponsorship_enabled:)
      #   Gas sponsorship configuration for an app.
      #
      #   @param configured_networks [Array<String>]
      #   @param require_app_secret [Boolean]
      #   @param sponsorship_enabled [Boolean]
    end
  end
end
