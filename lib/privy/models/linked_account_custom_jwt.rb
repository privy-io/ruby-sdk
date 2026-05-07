# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountCustomJwt < Privy::Internal::Type::BaseModel
      # @!attribute custom_user_id
      #
      #   @return [String]
      required :custom_user_id, String

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
      #   @return [Symbol, Privy::Models::LinkedAccountCustomJwt::Type]
      required :type, enum: -> { Privy::LinkedAccountCustomJwt::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(custom_user_id:, first_verified_at:, latest_verified_at:, type:, verified_at:)
      #   A custom JWT account linked to the user.
      #
      #   @param custom_user_id [String]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param type [Symbol, Privy::Models::LinkedAccountCustomJwt::Type]
      #   @param verified_at [Float]

      # @see Privy::Models::LinkedAccountCustomJwt#type
      module Type
        extend Privy::Internal::Type::Enum

        CUSTOM_AUTH = :custom_auth

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
