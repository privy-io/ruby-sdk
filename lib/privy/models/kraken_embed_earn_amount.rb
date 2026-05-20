# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedEarnAmount < Privy::Internal::Type::BaseModel
      # @!attribute converted
      #
      #   @return [String]
      required :converted, String

      # @!attribute native
      #
      #   @return [String]
      required :native, String

      # @!method initialize(converted:, native:)
      #   An earn amount with native and converted values.
      #
      #   @param converted [String]
      #   @param native [String]
    end
  end
end
