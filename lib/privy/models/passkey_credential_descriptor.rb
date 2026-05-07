# frozen_string_literal: true

module Privy
  module Models
    class PasskeyCredentialDescriptor < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [String]
      required :type, String

      # @!attribute transports
      #
      #   @return [Array<String>, nil]
      optional :transports, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(id:, type:, transports: nil)
      #   A WebAuthn credential descriptor identifying a specific public key credential.
      #
      #   @param id [String]
      #   @param type [String]
      #   @param transports [Array<String>]
    end
  end
end
