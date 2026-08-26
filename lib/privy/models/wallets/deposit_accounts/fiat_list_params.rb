# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      module DepositAccounts
        # @see Privy::Resources::Wallets::DepositAccounts::Fiat#list
        class FiatListParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          # @!attribute wallet_id
          #   The ID of the wallet.
          #
          #   @return [String]
          required :wallet_id, String

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

          # @!method initialize(wallet_id:, provider:, environment: nil, request_options: {})
          #   @param wallet_id [String] The ID of the wallet.
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
end
