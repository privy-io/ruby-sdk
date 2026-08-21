# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   No cards customer has been created for this Privy user.
      #
      #   @return [Privy::Models::CardIssuingCustomerNotCreatedResponse, Privy::Models::CardIssuingCustomerElectronicDisclosureRequiredResponse, Privy::Models::CardIssuingCustomerBankTermsRequiredResponse, Privy::Models::CardIssuingCustomerBridgeTermsRequiredResponse, Privy::Models::CardIssuingCustomerKYCRequiredResponse, Privy::Models::CardIssuingCustomerPendingResponse, Privy::Models::CardIssuingCustomerRejectedResponse, Privy::Models::CardIssuingCustomerErrorResponse, Privy::Models::CardIssuingCustomerReadyResponse]
      required :data, union: -> { Privy::CardIssuingCustomerResponse::Data }

      # @!method initialize(data:)
      #   Cards customer state for a Privy user.
      #
      #   @param data [Privy::Models::CardIssuingCustomerNotCreatedResponse, Privy::Models::CardIssuingCustomerElectronicDisclosureRequiredResponse, Privy::Models::CardIssuingCustomerBankTermsRequiredResponse, Privy::Models::CardIssuingCustomerBridgeTermsRequiredResponse, Privy::Models::CardIssuingCustomerKYCRequiredResponse, Privy::Models::CardIssuingCustomerPendingResponse, Privy::Models::CardIssuingCustomerRejectedResponse, Privy::Models::CardIssuingCustomerErrorResponse, Privy::Models::CardIssuingCustomerReadyResponse] No cards customer has been created for this Privy user.

      # No cards customer has been created for this Privy user.
      #
      # @see Privy::Models::CardIssuingCustomerResponse#data
      module Data
        extend Privy::Internal::Type::Union

        discriminator :status

        # No cards customer has been created for this Privy user.
        variant :not_created, -> { Privy::CardIssuingCustomerNotCreatedResponse }

        # A cards customer exists and the user must accept the electronic disclosure (E-Sign consent) before any other agreement can be accepted electronically.
        variant :electronic_disclosure_required,
                -> { Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse }

        # A cards customer exists and must accept the bank agreements. Privy records these rather than the provider, so this step is reached even when the provider already has its own terms — for example a customer onboarded through another product.
        variant :bank_terms_required, -> { Privy::CardIssuingCustomerBankTermsRequiredResponse }

        # A cards customer exists and must accept the provider terms hosted at `tos_url` before KYC. Reached only once the bank agreements are recorded.
        variant :bridge_terms_required, -> { Privy::CardIssuingCustomerBridgeTermsRequiredResponse }

        # A Bridge cards customer exists and must complete KYC before card creation.
        variant :kyc_required, -> { Privy::CardIssuingCustomerKYCRequiredResponse }

        # A cards customer waiting for card issuing to become available.
        variant :pending, -> { Privy::CardIssuingCustomerPendingResponse }

        # Bridge rejected the cards customer during verification.
        variant :rejected, -> { Privy::CardIssuingCustomerRejectedResponse }

        # The cards customer cannot continue onboarding or issue cards.
        variant :error, -> { Privy::CardIssuingCustomerErrorResponse }

        # A cards customer that has a Stripe cardholder external ID and can issue cards.
        variant :ready, -> { Privy::CardIssuingCustomerReadyResponse }

        # @!method self.variants
        #   @return [Array(Privy::Models::CardIssuingCustomerNotCreatedResponse, Privy::Models::CardIssuingCustomerElectronicDisclosureRequiredResponse, Privy::Models::CardIssuingCustomerBankTermsRequiredResponse, Privy::Models::CardIssuingCustomerBridgeTermsRequiredResponse, Privy::Models::CardIssuingCustomerKYCRequiredResponse, Privy::Models::CardIssuingCustomerPendingResponse, Privy::Models::CardIssuingCustomerRejectedResponse, Privy::Models::CardIssuingCustomerErrorResponse, Privy::Models::CardIssuingCustomerReadyResponse)]
      end
    end
  end
end
