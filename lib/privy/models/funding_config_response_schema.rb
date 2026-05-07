# frozen_string_literal: true

module Privy
  module Models
    class FundingConfigResponseSchema < Privy::Internal::Type::BaseModel
      # @!attribute cross_chain_bridging_enabled
      #
      #   @return [Boolean]
      required :cross_chain_bridging_enabled, Privy::Internal::Type::Boolean

      # @!attribute default_recommended_amount
      #
      #   @return [String]
      required :default_recommended_amount, String

      # @!attribute default_recommended_currency
      #   A crypto currency identified by a CAIP-2 chain ID and optional asset.
      #
      #   @return [Privy::Models::Currency]
      required :default_recommended_currency, -> { Privy::Currency }

      # @!attribute methods_
      #
      #   @return [Array<Symbol, Privy::Models::FundingMethodEnum>]
      required :methods_,
               -> { Privy::Internal::Type::ArrayOf[enum: Privy::FundingMethodEnum] },
               api_name: :methods

      # @!attribute options
      #
      #   @return [Array<Privy::Models::FundingOption>]
      required :options, -> { Privy::Internal::Type::ArrayOf[Privy::FundingOption] }

      # @!attribute prompt_funding_on_wallet_creation
      #
      #   @return [Boolean]
      required :prompt_funding_on_wallet_creation, Privy::Internal::Type::Boolean

      # @!method initialize(cross_chain_bridging_enabled:, default_recommended_amount:, default_recommended_currency:, methods_:, options:, prompt_funding_on_wallet_creation:)
      #   Configuration for funding and on-ramp options.
      #
      #   @param cross_chain_bridging_enabled [Boolean]
      #
      #   @param default_recommended_amount [String]
      #
      #   @param default_recommended_currency [Privy::Models::Currency] A crypto currency identified by a CAIP-2 chain ID and optional asset.
      #
      #   @param methods_ [Array<Symbol, Privy::Models::FundingMethodEnum>]
      #
      #   @param options [Array<Privy::Models::FundingOption>]
      #
      #   @param prompt_funding_on_wallet_creation [Boolean]
    end
  end
end
