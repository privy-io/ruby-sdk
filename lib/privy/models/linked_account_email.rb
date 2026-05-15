# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountEmail < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

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
      #   @return [Symbol, Privy::Models::LinkedAccountEmail::Type]
      required :type, enum: -> { Privy::LinkedAccountEmail::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(address:, first_verified_at:, latest_verified_at:, type:, verified_at:)
      #   An email account linked to the user.
      #
      #   @param address [String]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param type [Symbol, Privy::Models::LinkedAccountEmail::Type]
      #   @param verified_at [Float]

      # @see Privy::Models::LinkedAccountEmail#type
      module Type
        extend Privy::Internal::Type::Enum

        EMAIL = :email

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
