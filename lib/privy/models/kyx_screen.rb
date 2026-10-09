# frozen_string_literal: true

module Privy
  module Models
    class KyxScreen < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Outcome of a screen performed under KYC/KYB reliance.
      #
      #   @return [Symbol, Privy::Models::KyxScreenResult]
      required :result, enum: -> { Privy::KyxScreenResult }

      # @!attribute screened_at
      #   When the screen was performed (ISO 8601 date or date-time).
      #
      #   @return [Time, Date]
      required :screened_at, union: -> { Privy::KyxScreen::ScreenedAt }

      # @!method initialize(result:, screened_at:)
      #   Result of a KYC/AML or OFAC screen you performed and are relying on the provider
      #   to accept, honoured only for developers enrolled in reliance.
      #
      #   @param result [Symbol, Privy::Models::KyxScreenResult] Outcome of a screen performed under KYC/KYB reliance.
      #
      #   @param screened_at [Time, Date] When the screen was performed (ISO 8601 date or date-time).

      # When the screen was performed (ISO 8601 date or date-time).
      #
      # @see Privy::Models::KyxScreen#screened_at
      module ScreenedAt
        extend Privy::Internal::Type::Union

        variant Time

        variant Date

        # @!method self.variants
        #   @return [Array(Time, Date)]
      end
    end
  end
end
