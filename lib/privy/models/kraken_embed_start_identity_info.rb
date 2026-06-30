# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedStartIdentityInfo < Privy::Internal::Type::BaseModel
      # @!attribute date_of_birth
      #
      #   @return [Date, nil]
      optional :date_of_birth, Date, nil?: true

      # @!attribute full_name
      #   User's full name including first, optional middle, and last name.
      #
      #   @return [Privy::Models::KrakenEmbedFullName, nil]
      optional :full_name, -> { Privy::KrakenEmbedFullName }, nil?: true

      # @!method initialize(date_of_birth: nil, full_name: nil)
      #   Identity information hints including full name and date of birth for proof of
      #   identity verification.
      #
      #   @param date_of_birth [Date, nil]
      #
      #   @param full_name [Privy::Models::KrakenEmbedFullName, nil] User's full name including first, optional middle, and last name.
    end
  end
end
