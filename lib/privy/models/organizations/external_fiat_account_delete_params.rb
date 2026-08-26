# frozen_string_literal: true

module Privy
  module Models
    module Organizations
      # @see Privy::Resources::Organizations::ExternalFiatAccounts#delete
      class ExternalFiatAccountDeleteParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        # @!attribute organization_id
        #   The ID of the organization.
        #
        #   @return [String]
        required :organization_id, String

        # @!attribute account_id
        #   The ID of the external fiat account.
        #
        #   @return [String]
        required :account_id, String

        # @!method initialize(organization_id:, account_id:, request_options: {})
        #   @param organization_id [String] The ID of the organization.
        #
        #   @param account_id [String] The ID of the external fiat account.
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
