# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountPasskeyInput < Privy::Internal::Type::BaseModel
      # @!attribute credential_device_type
      #   WebAuthn credential device type indicating platform or cross-platform
      #   authenticator residency.
      #
      #   @return [Symbol, Privy::Models::LinkedAccountPasskeyCredentialDeviceType]
      required :credential_device_type, enum: -> { Privy::LinkedAccountPasskeyCredentialDeviceType }

      # @!attribute credential_id
      #
      #   @return [String]
      required :credential_id, String

      # @!attribute credential_public_key
      #
      #   @return [String]
      required :credential_public_key, String

      # @!attribute credential_username
      #
      #   @return [String]
      required :credential_username, String

      # @!attribute type
      #
      #   @return [Symbol, :passkey]
      required :type, const: :passkey

      # @!method initialize(credential_device_type:, credential_id:, credential_public_key:, credential_username:, type: :passkey)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::LinkedAccountPasskeyInput} for more details.
      #
      #   The payload for importing a passkey account.
      #
      #   @param credential_device_type [Symbol, Privy::Models::LinkedAccountPasskeyCredentialDeviceType] WebAuthn credential device type indicating platform or cross-platform authentica
      #
      #   @param credential_id [String]
      #
      #   @param credential_public_key [String]
      #
      #   @param credential_username [String]
      #
      #   @param type [Symbol, :passkey]
    end
  end
end
