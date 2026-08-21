# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerConsentsRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute accept_bank_terms
      #   Set to true when the user accepted the bank agreements. Requires the electronic
      #   disclosure to be accepted first, in this request or a previous one.
      #
      #   @return [Boolean, nil]
      optional :accept_bank_terms, Privy::Internal::Type::Boolean

      # @!attribute accept_electronic_disclosure
      #   Set to true when the user accepted the electronic disclosure (E-Sign consent).
      #
      #   @return [Boolean, nil]
      optional :accept_electronic_disclosure, Privy::Internal::Type::Boolean

      # @!method initialize(environment:, accept_bank_terms: nil, accept_electronic_disclosure: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CardIssuingCustomerConsentsRequestBody} for more details.
      #
      #   Request body for recording that the user accepted the agreements Privy tracks.
      #   Send one field per screen the user accepted. Acceptances are recorded once —
      #   re-sending a field that is already recorded leaves the original timestamp
      #   unchanged.
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param accept_bank_terms [Boolean] Set to true when the user accepted the bank agreements. Requires the electronic
      #
      #   @param accept_electronic_disclosure [Boolean] Set to true when the user accepted the electronic disclosure (E-Sign consent).
    end
  end
end
