# frozen_string_literal: true

module Privy
  module Models
    class SwapAttachmentParams < Privy::Internal::Type::BaseModel
      # @!attribute destination_address
      #
      #   @return [String]
      required :destination_address, String

      # @!method initialize(destination_address:)
      #   Per-attachment parameters for swap automations.
      #
      #   @param destination_address [String]
    end
  end
end
