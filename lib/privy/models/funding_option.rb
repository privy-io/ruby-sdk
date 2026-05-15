# frozen_string_literal: true

module Privy
  module Models
    class FundingOption < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [String]
      required :method_, String, api_name: :method

      # @!attribute provider
      #
      #   @return [String]
      required :provider, String

      # @!method initialize(method_:, provider:)
      #   A funding option with method and provider.
      #
      #   @param method_ [String]
      #   @param provider [String]
    end
  end
end
