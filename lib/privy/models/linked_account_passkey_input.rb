# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountPasskeyInput < Privy::Internal::Type::BaseModel
      # @!attribute credential_device_type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountPasskeyInput::CredentialDeviceType]
      required :credential_device_type, enum: -> { Privy::LinkedAccountPasskeyInput::CredentialDeviceType }

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
      #   The payload for importing a passkey account.
      #
      #   @param credential_device_type [Symbol, Privy::Models::LinkedAccountPasskeyInput::CredentialDeviceType]
      #   @param credential_id [String]
      #   @param credential_public_key [String]
      #   @param credential_username [String]
      #   @param type [Symbol, :passkey]

      # @see Privy::Models::LinkedAccountPasskeyInput#credential_device_type
      module CredentialDeviceType
        extend Privy::Internal::Type::Enum

        SINGLE_DEVICE = :singleDevice
        MULTI_DEVICE = :multiDevice

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
