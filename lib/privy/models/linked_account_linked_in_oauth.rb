# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountLinkedInOAuth < Privy::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String, nil]
      required :email, String, nil?: true

      # @!attribute first_verified_at
      #
      #   @return [Float, nil]
      required :first_verified_at, Float, nil?: true

      # @!attribute latest_verified_at
      #
      #   @return [Float, nil]
      required :latest_verified_at, Float, nil?: true

      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountLinkedInOAuth::Type]
      required :type, enum: -> { Privy::LinkedAccountLinkedInOAuth::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute vanity_name
      #
      #   @return [String, nil]
      optional :vanity_name, String

      # @!method initialize(email:, first_verified_at:, latest_verified_at:, subject:, type:, verified_at:, name: nil, vanity_name: nil)
      #   A LinkedIn OAuth account linked to the user.
      #
      #   @param email [String, nil]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param subject [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountLinkedInOAuth::Type]
      #   @param verified_at [Float]
      #   @param name [String]
      #   @param vanity_name [String]

      # @see Privy::Models::LinkedAccountLinkedInOAuth#type
      module Type
        extend Privy::Internal::Type::Enum

        LINKEDIN_OAUTH = :linkedin_oauth

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
