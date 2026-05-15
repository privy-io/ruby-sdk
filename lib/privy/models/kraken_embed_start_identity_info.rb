# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedStartIdentityInfo < Privy::Internal::Type::BaseModel
      # @!attribute date_of_birth
      #
      #   @return [Date, nil]
      optional :date_of_birth, Date, nil?: true

      # @!attribute full_name
      #
      #   @return [Privy::Models::KrakenEmbedStartIdentityInfo::FullName, nil]
      optional :full_name, -> { Privy::KrakenEmbedStartIdentityInfo::FullName }, nil?: true

      # @!method initialize(date_of_birth: nil, full_name: nil)
      #   Identity information hints including full name and date of birth for proof of
      #   identity verification.
      #
      #   @param date_of_birth [Date, nil]
      #   @param full_name [Privy::Models::KrakenEmbedStartIdentityInfo::FullName, nil]

      # @see Privy::Models::KrakenEmbedStartIdentityInfo#full_name
      class FullName < Privy::Internal::Type::BaseModel
        # @!attribute first_name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #
        #   @return [String]
        required :last_name, String

        # @!attribute middle_name
        #
        #   @return [String, nil]
        optional :middle_name, String, nil?: true

        # @!method initialize(first_name:, last_name:, middle_name: nil)
        #   @param first_name [String]
        #   @param last_name [String]
        #   @param middle_name [String, nil]
      end
    end
  end
end
