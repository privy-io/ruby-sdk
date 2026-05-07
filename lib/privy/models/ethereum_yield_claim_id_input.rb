# frozen_string_literal: true

module Privy
  module Models
    class EthereumYieldClaimIDInput < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The yield claim transaction ID.
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   Input for fetching a yield reward claim by ID.
      #
      #   @param id [String] The yield claim transaction ID.
    end
  end
end
