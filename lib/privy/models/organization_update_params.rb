# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Organizations#update
    class OrganizationUpdateParams < Privy::Models::OrganizationUpdateRequestBody
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute organization_id
      #   ID of the organization.
      #
      #   @return [String]
      required :organization_id, String

      # @!method initialize(organization_id:, request_options: {})
      #   @param organization_id [String] ID of the organization.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
