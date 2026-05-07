# frozen_string_literal: true

module Privy
  module Models
    class SiwsInitInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!method initialize(address:, token: nil)
      #   Input for initiating a SIWS ceremony.
      #
      #   @param address [String]
      #   @param token [String]
    end
  end
end
