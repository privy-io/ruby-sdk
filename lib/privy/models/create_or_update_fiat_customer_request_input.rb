# frozen_string_literal: true

module Privy
  module Models
    class CreateOrUpdateFiatCustomerRequestInput < Privy::Internal::Type::BaseModel
      # @!attribute has_accepted_terms
      #
      #   @return [Boolean]
      required :has_accepted_terms, Privy::Internal::Type::Boolean

      # @!attribute provider
      #   Valid set of onramp providers
      #
      #   @return [Symbol, Privy::Models::OnrampProvider]
      required :provider, enum: -> { Privy::OnrampProvider }

      # @!attribute kyc_redirect_url
      #
      #   @return [String, nil]
      optional :kyc_redirect_url, String

      # @!method initialize(has_accepted_terms:, provider:, kyc_redirect_url: nil)
      #   The request input for creating (or updating) a native onramp provider customer.
      #
      #   @param has_accepted_terms [Boolean]
      #
      #   @param provider [Symbol, Privy::Models::OnrampProvider] Valid set of onramp providers
      #
      #   @param kyc_redirect_url [String]
    end
  end
end
