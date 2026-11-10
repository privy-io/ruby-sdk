# frozen_string_literal: true

module Privy
  module Models
    class ExternalFiatAccountPaymentRails < Privy::Internal::Type::BaseModel
      # @!attribute supported
      #   Supported payment rails, using the same names as `payment_rail` on payouts, such
      #   as ach, ach_same_day, wire, or fednow.
      #
      #   @return [Array<String>]
      required :supported, Privy::Internal::Type::ArrayOf[String]

      # @!attribute unsupported_reasons
      #   Reasons payment rails are unavailable, keyed by rail name.
      #
      #   @return [Hash{Symbol=>String}]
      required :unsupported_reasons, Privy::Internal::Type::HashOf[String]

      # @!method initialize(supported:, unsupported_reasons:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::ExternalFiatAccountPaymentRails} for more details.
      #
      #   Payment rails supported by an external fiat account and reasons other rails are
      #   unavailable.
      #
      #   @param supported [Array<String>] Supported payment rails, using the same names as `payment_rail` on payouts, such
      #
      #   @param unsupported_reasons [Hash{Symbol=>String}] Reasons payment rails are unavailable, keyed by rail name.
    end
  end
end
