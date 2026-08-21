# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingBankInfo < Privy::Internal::Type::BaseModel
      # @!attribute agreements
      #   Agreements the user must accept for this bank, in the order they should be
      #   presented. Render every entry — the set and size vary by bank.
      #
      #   @return [Array<Privy::Models::CardIssuingBankAgreement>]
      required :agreements, -> { Privy::Internal::Type::ArrayOf[Privy::CardIssuingBankAgreement] }

      # @!attribute name
      #   Display name of the issuing bank, e.g. "Lead Bank".
      #
      #   @return [String]
      required :name, String

      # @!method initialize(agreements:, name:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CardIssuingBankInfo} for more details.
      #
      #   The bank issuing the card and the agreements the user must accept for it. Served
      #   from the backend so the agreements can change without an SDK release, and so
      #   swapping banks does not require a client change.
      #
      #   @param agreements [Array<Privy::Models::CardIssuingBankAgreement>] Agreements the user must accept for this bank, in the order they should be prese
      #
      #   @param name [String] Display name of the issuing bank, e.g. "Lead Bank".
    end
  end
end
