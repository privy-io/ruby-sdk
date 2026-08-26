# frozen_string_literal: true

module Privy
  module Models
    module Users
      # @see Privy::Resources::Users::ExternalFiatAccounts#list
      class ExternalFiatAccountListParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        # @!attribute user_id
        #   The DID of the user to list external fiat accounts for.
        #
        #   @return [String]
        required :user_id, String

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

        # @!method initialize(user_id:, provider:, environment: nil, request_options: {})
        #   @param user_id [String] The DID of the user to list external fiat accounts for.
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
