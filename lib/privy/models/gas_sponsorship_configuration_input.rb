# frozen_string_literal: true

module Privy
  module Models
    class GasSponsorshipConfigurationInput < Privy::Internal::Type::BaseModel
      # @!attribute configured_networks
      #
      #   @return [Array<String>, nil]
      optional :configured_networks, Privy::Internal::Type::ArrayOf[String]

      # @!attribute require_app_secret
      #
      #   @return [Boolean, nil]
      optional :require_app_secret, Privy::Internal::Type::Boolean

      # @!attribute sponsorship_enabled
      #
      #   @return [Boolean, nil]
      optional :sponsorship_enabled, Privy::Internal::Type::Boolean

      # @!method initialize(configured_networks: nil, require_app_secret: nil, sponsorship_enabled: nil)
      #   Input for configuring gas sponsorship settings for an app.
      #
      #   @param configured_networks [Array<String>]
      #   @param require_app_secret [Boolean]
      #   @param sponsorship_enabled [Boolean]
    end
  end
end
