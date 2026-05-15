# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningMetadata < Privy::Internal::Type::BaseModel
      # @!attribute domain
      #
      #   @return [String]
      required :domain, String

      # @!method initialize(domain:)
      #   Additional information for Blockaid to validate against.
      #
      #   @param domain [String]
    end
  end
end
