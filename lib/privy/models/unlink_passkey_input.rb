# frozen_string_literal: true

module Privy
  module Models
    class UnlinkPasskeyInput < Privy::Internal::Type::BaseModel
      # @!attribute credential_id
      #
      #   @return [String]
      required :credential_id, String

      # @!attribute remove_as_mfa
      #
      #   @return [Boolean, nil]
      optional :remove_as_mfa, Privy::Internal::Type::Boolean

      # @!method initialize(credential_id:, remove_as_mfa: nil)
      #   Input for unlinking a passkey credential.
      #
      #   @param credential_id [String]
      #   @param remove_as_mfa [Boolean]
    end
  end
end
