# frozen_string_literal: true

module Privy
  module Models
    class ExternalFiatAccountAddress < Privy::Internal::Type::BaseModel
      # @!attribute city
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #
      #   @return [String]
      required :country, String

      # @!attribute street_line_1
      #
      #   @return [String]
      required :street_line_1, String

      # @!attribute postal_code
      #
      #   @return [String, nil]
      optional :postal_code, String

      # @!attribute state
      #
      #   @return [String, nil]
      optional :state, String

      # @!attribute street_line_2
      #
      #   @return [String, nil]
      optional :street_line_2, String

      # @!method initialize(city:, country:, street_line_1:, postal_code: nil, state: nil, street_line_2: nil)
      #   Physical address associated with an external fiat account.
      #
      #   @param city [String]
      #   @param country [String]
      #   @param street_line_1 [String]
      #   @param postal_code [String]
      #   @param state [String]
      #   @param street_line_2 [String]
    end
  end
end
