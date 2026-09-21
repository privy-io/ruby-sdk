# frozen_string_literal: true

module Privy
  module Models
    class TransferScaAuthFactor < Privy::Internal::Type::BaseModel
      # @!attribute authenticated_at
      #   The ISO 8601 timestamp when this factor was authenticated.
      #
      #   @return [Time]
      required :authenticated_at, Time

      # @!attribute category
      #   The type of authentication factor used. Known values are: `knowledge` (something
      #   only the user knows, e.g. a PIN or password), `possession` (something only the
      #   user has, e.g. a phone receiving an OTP or a hardware token), and `inherence`
      #   (something the user is, e.g. a fingerprint or face scan). When `outcome` is
      #   `sca_used`, the two factors in `auth_factors` must belong to two different
      #   categories.
      #
      #   @return [Symbol, String, Privy::Models::TransferScaAuthFactorCategory]
      required :category, union: -> { Privy::TransferScaAuthFactorCategory }

      # @!attribute reference
      #   Your internal identifier for this authentication event (e.g. a session ID,
      #   transaction ID, or audit log reference). Used for reconciliation.
      #
      #   @return [String]
      required :reference, String

      # @!method initialize(authenticated_at:, category:, reference:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TransferScaAuthFactor} for more details.
      #
      #   Authentication factor metadata for a transfer.
      #
      #   @param authenticated_at [Time] The ISO 8601 timestamp when this factor was authenticated.
      #
      #   @param category [Symbol, String, Privy::Models::TransferScaAuthFactorCategory] The type of authentication factor used. Known values are: `knowledge` (something
      #
      #   @param reference [String] Your internal identifier for this authentication event (e.g. a session ID, trans
    end
  end
end
