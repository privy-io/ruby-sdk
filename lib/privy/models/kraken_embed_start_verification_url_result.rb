# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedStartVerificationURLResult < Privy::Internal::Type::BaseModel
      # @!attribute verification_id
      #
      #   @return [String]
      required :verification_id, String

      # @!method initialize(verification_id:)
      #   Result payload for start verification URL response.
      #
      #   @param verification_id [String]
    end
  end
end
