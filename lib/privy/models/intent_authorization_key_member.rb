# frozen_string_literal: true

module Privy
  module Models
    class IntentAuthorizationKeyMember < Privy::Internal::Type::BaseModel
      # @!attribute public_key
      #   Public key of the key quorum member
      #
      #   @return [String]
      required :public_key, String

      # @!attribute signed_at
      #   Unix timestamp when this member signed, or null if not yet signed.
      #
      #   @return [Float, nil]
      required :signed_at, Float, nil?: true

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::IntentAuthorizationKeyMember::Type]
      required :type, enum: -> { Privy::IntentAuthorizationKeyMember::Type }

      # @!method initialize(public_key:, signed_at:, type:)
      #   A key member of an intent authorization quorum.
      #
      #   @param public_key [String] Public key of the key quorum member
      #
      #   @param signed_at [Float, nil] Unix timestamp when this member signed, or null if not yet signed.
      #
      #   @param type [Symbol, Privy::Models::IntentAuthorizationKeyMember::Type]

      # @see Privy::Models::IntentAuthorizationKeyMember#type
      module Type
        extend Privy::Internal::Type::Enum

        KEY = :key

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
