# frozen_string_literal: true

module Privy
  module Models
    class IntentAuthorizationUserMember < Privy::Internal::Type::BaseModel
      # @!attribute signed_at
      #   Unix timestamp when this member signed, or null if not yet signed.
      #
      #   @return [Float, nil]
      required :signed_at, Float, nil?: true

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::IntentAuthorizationUserMember::Type]
      required :type, enum: -> { Privy::IntentAuthorizationUserMember::Type }

      # @!attribute user_id
      #   User ID of the key quorum member
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(signed_at:, type:, user_id:)
      #   A user member of an intent authorization quorum.
      #
      #   @param signed_at [Float, nil] Unix timestamp when this member signed, or null if not yet signed.
      #
      #   @param type [Symbol, Privy::Models::IntentAuthorizationUserMember::Type]
      #
      #   @param user_id [String] User ID of the key quorum member

      # @see Privy::Models::IntentAuthorizationUserMember#type
      module Type
        extend Privy::Internal::Type::Enum

        USER = :user

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
