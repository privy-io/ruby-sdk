# frozen_string_literal: true

module Privy
  module Models
    class GetFiatCustomerRequestInput < Privy::Internal::Type::BaseModel
      # @!attribute provider
      #   Valid set of onramp providers
      #
      #   @return [Symbol, Privy::Models::OnrampProvider]
      required :provider, enum: -> { Privy::OnrampProvider }

      # @!attribute kyc_redirect_url
      #
      #   @return [String, nil]
      optional :kyc_redirect_url, String

      # @!method initialize(provider:, kyc_redirect_url: nil)
      #   The request input for getting a native onramp provider customer.
      #
      #   @param provider [Symbol, Privy::Models::OnrampProvider] Valid set of onramp providers
      #
      #   @param kyc_redirect_url [String]
    end
  end
end
