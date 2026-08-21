# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingBankAgreement < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Stable identifier for this agreement, e.g. "cardholder_agreement". Match on this
      #   rather than on `name`, which is display copy and can be reworded.
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   Display name, e.g. "Cardholder Agreement".
      #
      #   @return [String]
      required :name, String

      # @!attribute url
      #   Link to the agreement. Empty when the document has not been published yet.
      #
      #   @return [String, Symbol, Privy::Models::CardIssuingBankAgreement::URL]
      required :url, union: -> { Privy::CardIssuingBankAgreement::URL }

      # @!method initialize(id:, name:, url:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CardIssuingBankAgreement} for more details.
      #
      #   A single agreement the user must accept for the issuing bank.
      #
      #   @param id [String] Stable identifier for this agreement, e.g. "cardholder_agreement". Match on this
      #
      #   @param name [String] Display name, e.g. "Cardholder Agreement".
      #
      #   @param url [String, Symbol, Privy::Models::CardIssuingBankAgreement::URL] Link to the agreement. Empty when the document has not been published yet.

      # Link to the agreement. Empty when the document has not been published yet.
      #
      # @see Privy::Models::CardIssuingBankAgreement#url
      module URL
        extend Privy::Internal::Type::Union

        variant String

        variant const: -> { Privy::Models::CardIssuingBankAgreement::URL::EMPTY }

        # @!method self.variants
        #   @return [Array(String, Symbol)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(String, Privy::CardIssuingBankAgreement::URL::TaggedSymbol) }
        end

        # @!group

        EMPTY = :""

        # @!endgroup
      end
    end
  end
end
