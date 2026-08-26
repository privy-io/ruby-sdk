# frozen_string_literal: true

module Privy
  module Models
    class UsageCrossChainFeeRecordedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute amount_usd
      #
      #   @return [String]
      required :amount_usd, String

      # @!attribute event_id
      #   An opaque, stable identifier for this charge. Use it to deduplicate webhook
      #   deliveries.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute recorded_at
      #
      #   @return [Integer]
      required :recorded_at, Integer

      # @!attribute source_id
      #
      #   @return [String]
      required :source_id, String

      # @!attribute source_type
      #   The type of operation that incurred a usage charge.
      #
      #   @return [Symbol, Privy::Models::UsageSourceType]
      required :source_type, enum: -> { Privy::UsageSourceType }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::UsageCrossChainFeeRecordedWebhookPayload::Type]
      required :type, enum: -> { Privy::UsageCrossChainFeeRecordedWebhookPayload::Type }

      # @!method initialize(amount_usd:, event_id:, recorded_at:, source_id:, source_type:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::UsageCrossChainFeeRecordedWebhookPayload} for more details.
      #
      #   Payload for the usage.cross_chain_fee.recorded webhook event (Privy fee on a
      #   cross-chain transfer or swap).
      #
      #   @param amount_usd [String]
      #
      #   @param event_id [String] An opaque, stable identifier for this charge. Use it to deduplicate webhook deli
      #
      #   @param recorded_at [Integer]
      #
      #   @param source_id [String]
      #
      #   @param source_type [Symbol, Privy::Models::UsageSourceType] The type of operation that incurred a usage charge.
      #
      #   @param type [Symbol, Privy::Models::UsageCrossChainFeeRecordedWebhookPayload::Type] The type of webhook event.

      # The type of webhook event.
      #
      # @see Privy::Models::UsageCrossChainFeeRecordedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        USAGE_CROSS_CHAIN_FEE_RECORDED = :"usage.cross_chain_fee.recorded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
