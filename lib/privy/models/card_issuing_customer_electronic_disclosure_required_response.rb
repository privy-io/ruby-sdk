# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerElectronicDisclosureRequiredResponse < Privy::Internal::Type::BaseModel
      # @!attribute disclosure_url
      #   The disclosure the user must accept, rendered by the client.
      #
      #   @return [String]
      required :disclosure_url, String

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerElectronicDisclosureRequiredResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse::Status }

      # @!method initialize(disclosure_url:, status:)
      #   A cards customer exists and the user must accept the electronic disclosure
      #   (E-Sign consent) before any other agreement can be accepted electronically.
      #
      #   @param disclosure_url [String] The disclosure the user must accept, rendered by the client.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCustomerElectronicDisclosureRequiredResponse::Status]

      # @see Privy::Models::CardIssuingCustomerElectronicDisclosureRequiredResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        ELECTRONIC_DISCLOSURE_REQUIRED = :electronic_disclosure_required

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
