# frozen_string_literal: true

module Privy
  module Models
    module Organizations
      # @see Privy::Resources::Organizations::ExternalFiatAccounts#list
      class ExternalFiatAccountListParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        # @!attribute organization_id
        #   The ID of the organization to list external fiat accounts for.
        #
        #   @return [String]
        required :organization_id, String

        # @!attribute provider
        #   Supported fiat orchestration providers.
        #
        #   @return [Symbol, Privy::Models::OrchestrationProvider]
        required :provider, enum: -> { Privy::OrchestrationProvider }

        # @!attribute environment
        #   The Privy API environment.
        #
        #   @return [Symbol, Privy::Models::Environment, nil]
        optional :environment, enum: -> { Privy::Environment }

        # @!method initialize(organization_id:, provider:, environment: nil, request_options: {})
        #   @param organization_id [String] The ID of the organization to list external fiat accounts for.
        #
        #   @param provider [Symbol, Privy::Models::OrchestrationProvider] Supported fiat orchestration providers.
        #
        #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
