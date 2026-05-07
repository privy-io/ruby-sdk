# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountAuthorizationKey < Privy::Internal::Type::BaseModel
      # @!attribute first_verified_at
      #
      #   @return [Float, nil]
      required :first_verified_at, Float, nil?: true

      # @!attribute latest_verified_at
      #
      #   @return [Float, nil]
      required :latest_verified_at, Float, nil?: true

      # @!attribute public_key
      #
      #   @return [String]
      required :public_key, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountAuthorizationKey::Type]
      required :type, enum: -> { Privy::LinkedAccountAuthorizationKey::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(first_verified_at:, latest_verified_at:, public_key:, type:, verified_at:)
      #   An authorization key linked to the user.
      #
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param public_key [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountAuthorizationKey::Type]
      #   @param verified_at [Float]

      # @see Privy::Models::LinkedAccountAuthorizationKey#type
      module Type
        extend Privy::Internal::Type::Enum

        AUTHORIZATION_KEY = :authorization_key

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
