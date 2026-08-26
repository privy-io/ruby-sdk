# frozen_string_literal: true

module Privy
  module Models
    class KyxEndorsement < Privy::Internal::Type::BaseModel
      # @!attribute missing
      #   Missing requirements, or null if complete.
      #
      #   @return [Array<String>, nil]
      required :missing, Privy::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute name
      #   Endorsement identifier.
      #
      #   @return [String]
      required :name, String

      # @!attribute status
      #   Status of an endorsement. Passthrough from the provider.
      #
      #   @return [String]
      required :status, String

      # @!method initialize(missing:, name:, status:)
      #   An endorsement with its approval status and missing requirements.
      #
      #   @param missing [Array<String>, nil] Missing requirements, or null if complete.
      #
      #   @param name [String] Endorsement identifier.
      #
      #   @param status [String] Status of an endorsement. Passthrough from the provider.
    end
  end
end
