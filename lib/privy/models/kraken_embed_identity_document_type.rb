# frozen_string_literal: true

module Privy
  module Models
    # Document types accepted for proof of identity verification.
    module KrakenEmbedIdentityDocumentType
      extend Privy::Internal::Type::Enum

      PASSPORT = :passport
      DRIVERS_LICENSE = :drivers_license
      ID_CARD = :id_card
      RESIDENCE_CARD = :residence_card
      SPECIAL_PERMANENT_RESIDENCE_CARD = :special_permanent_residence_card

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
