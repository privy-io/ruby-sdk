# frozen_string_literal: true

module Privy
  module Models
    module Organizations
      # @see Privy::Resources::Organizations::KYB#initiate_tos
      class KYBInitiateTosParams < Privy::Models::KYBTosRequestBody
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        # @!attribute organization_id
        #   The ID of the organization.
        #
        #   @return [String]
        required :organization_id, String

        # @!method initialize(organization_id:, request_options: {})
        #   @param organization_id [String] The ID of the organization.
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
