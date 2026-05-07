# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountPhone < Privy::Internal::Type::BaseModel
      # @!attribute first_verified_at
      #
      #   @return [Float, nil]
      required :first_verified_at, Float, nil?: true

      # @!attribute latest_verified_at
      #
      #   @return [Float, nil]
      required :latest_verified_at, Float, nil?: true

      # @!attribute phone_number
      #
      #   @return [String]
      required :phone_number, String, api_name: :phoneNumber

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountPhone::Type]
      required :type, enum: -> { Privy::LinkedAccountPhone::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!attribute number
      #
      #   @return [String, nil]
      optional :number, String

      # @!method initialize(first_verified_at:, latest_verified_at:, phone_number:, type:, verified_at:, number: nil)
      #   A phone number account linked to the user.
      #
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param phone_number [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountPhone::Type]
      #   @param verified_at [Float]
      #   @param number [String]

      # @see Privy::Models::LinkedAccountPhone#type
      module Type
        extend Privy::Internal::Type::Enum

        PHONE = :phone

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
