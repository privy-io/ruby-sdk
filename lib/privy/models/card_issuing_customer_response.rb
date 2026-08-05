# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   No cards customer has been created for this Privy user.
      #
      #   @return [Privy::Models::CardIssuingCustomerNotCreatedResponse, Privy::Models::CardIssuingCustomerTermsRequiredResponse, Privy::Models::CardIssuingCustomerKYCRequiredResponse, Privy::Models::CardIssuingCustomerPendingResponse, Privy::Models::CardIssuingCustomerReadyResponse]
      required :data, union: -> { Privy::CardIssuingCustomerResponse::Data }

      # @!method initialize(data:)
      #   Cards customer state for a Privy user.
      #
      #   @param data [Privy::Models::CardIssuingCustomerNotCreatedResponse, Privy::Models::CardIssuingCustomerTermsRequiredResponse, Privy::Models::CardIssuingCustomerKYCRequiredResponse, Privy::Models::CardIssuingCustomerPendingResponse, Privy::Models::CardIssuingCustomerReadyResponse] No cards customer has been created for this Privy user.

      # No cards customer has been created for this Privy user.
      #
      # @see Privy::Models::CardIssuingCustomerResponse#data
      module Data
        extend Privy::Internal::Type::Union

        discriminator :status

        # No cards customer has been created for this Privy user.
        variant :not_created, -> { Privy::CardIssuingCustomerNotCreatedResponse }

        # A Bridge cards customer exists and must accept terms before KYC.
        variant :terms_required, -> { Privy::CardIssuingCustomerTermsRequiredResponse }

        # A Bridge cards customer exists and must complete KYC before card creation.
        variant :kyc_required, -> { Privy::CardIssuingCustomerKYCRequiredResponse }

        # A cards customer waiting for card issuing to become available.
        variant :pending, -> { Privy::CardIssuingCustomerPendingResponse }

        # A cards customer that has a Stripe cardholder external ID and can issue cards.
        variant :ready, -> { Privy::CardIssuingCustomerReadyResponse }

        # @!method self.variants
        #   @return [Array(Privy::Models::CardIssuingCustomerNotCreatedResponse, Privy::Models::CardIssuingCustomerTermsRequiredResponse, Privy::Models::CardIssuingCustomerKYCRequiredResponse, Privy::Models::CardIssuingCustomerPendingResponse, Privy::Models::CardIssuingCustomerReadyResponse)]
      end
    end
  end
end
