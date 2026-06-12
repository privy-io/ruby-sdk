# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedFullName < Privy::Internal::Type::BaseModel
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
      #   User's full name including first, optional middle, and last name.
      #
      #   @param first_name [String]
      #   @param last_name [String]
      #   @param middle_name [String, nil]
    end
  end
end
