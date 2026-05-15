# frozen_string_literal: true

module Privy
  module Models
    class EthereumYieldSweepIDInput < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The yield sweep ID.
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   Input for fetching a yield sweep by ID.
      #
      #   @param id [String] The yield sweep ID.
    end
  end
end
