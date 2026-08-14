# frozen_string_literal: true

module Privy
  module Models
    class UsageGasSponsorshipRecordedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute amount_usd
      #
      #   @return [String]
      required :amount_usd, String

      # @!attribute recorded_at
      #
      #   @return [Integer]
      required :recorded_at, Integer

      # @!attribute source_id
      #
      #   @return [String]
      required :source_id, String

      # @!attribute source_type
      #   The type of wallet action that incurred a usage charge.
      #
      #   @return [Symbol, Privy::Models::UsageSourceType]
      required :source_type, enum: -> { Privy::UsageSourceType }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::UsageGasSponsorshipRecordedWebhookPayload::Type]
      required :type, enum: -> { Privy::UsageGasSponsorshipRecordedWebhookPayload::Type }

      # @!method initialize(amount_usd:, recorded_at:, source_id:, source_type:, type:)
      #   Payload for the usage.gas_sponsorship.recorded webhook event (sponsored network
      #   gas).
      #
      #   @param amount_usd [String]
      #
      #   @param recorded_at [Integer]
      #
      #   @param source_id [String]
      #
      #   @param source_type [Symbol, Privy::Models::UsageSourceType] The type of wallet action that incurred a usage charge.
      #
      #   @param type [Symbol, Privy::Models::UsageGasSponsorshipRecordedWebhookPayload::Type] The type of webhook event.

      # The type of webhook event.
      #
      # @see Privy::Models::UsageGasSponsorshipRecordedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        USAGE_GAS_SPONSORSHIP_RECORDED = :"usage.gas_sponsorship.recorded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
