# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountPasskey < Privy::Internal::Type::BaseModel
      # @!attribute credential_id
      #
      #   @return [String]
      required :credential_id, String

      # @!attribute enrolled_in_mfa
      #
      #   @return [Boolean]
      required :enrolled_in_mfa, Privy::Internal::Type::Boolean

      # @!attribute first_verified_at
      #
      #   @return [Float, nil]
      required :first_verified_at, Float, nil?: true

      # @!attribute latest_verified_at
      #
      #   @return [Float, nil]
      required :latest_verified_at, Float, nil?: true

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountPasskey::Type]
      required :type, enum: -> { Privy::LinkedAccountPasskey::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!attribute authenticator_name
      #
      #   @return [String, nil]
      optional :authenticator_name, String

      # @!attribute created_with_browser
      #
      #   @return [String, nil]
      optional :created_with_browser, String

      # @!attribute created_with_device
      #
      #   @return [String, nil]
      optional :created_with_device, String

      # @!attribute created_with_os
      #
      #   @return [String, nil]
      optional :created_with_os, String

      # @!attribute public_key
      #
      #   @return [String, nil]
      optional :public_key, String

      # @!method initialize(credential_id:, enrolled_in_mfa:, first_verified_at:, latest_verified_at:, type:, verified_at:, authenticator_name: nil, created_with_browser: nil, created_with_device: nil, created_with_os: nil, public_key: nil)
      #   A passkey account linked to the user.
      #
      #   @param credential_id [String]
      #   @param enrolled_in_mfa [Boolean]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param type [Symbol, Privy::Models::LinkedAccountPasskey::Type]
      #   @param verified_at [Float]
      #   @param authenticator_name [String]
      #   @param created_with_browser [String]
      #   @param created_with_device [String]
      #   @param created_with_os [String]
      #   @param public_key [String]

      # @see Privy::Models::LinkedAccountPasskey#type
      module Type
        extend Privy::Internal::Type::Enum

        PASSKEY = :passkey

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
