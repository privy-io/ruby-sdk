# typed: strong

module Privy
  module Models
    class UsageSwapProviderFeeRecordedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::UsageSwapProviderFeeRecordedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :amount_usd

      # An opaque, stable identifier for this charge. Use it to deduplicate webhook
      # deliveries.
      sig { returns(String) }
      attr_accessor :event_id

      sig { returns(Integer) }
      attr_accessor :recorded_at

      sig { returns(String) }
      attr_accessor :source_id

      # The type of operation that incurred a usage charge.
      sig { returns(Privy::UsageSourceType::TaggedSymbol) }
      attr_accessor :source_type

      # The type of webhook event.
      sig do
        returns(
          Privy::UsageSwapProviderFeeRecordedWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Payload for the usage.swap_provider_fee.recorded webhook event (swap provider
      # fee on a cross-chain transfer or swap).
      sig do
        params(
          amount_usd: String,
          event_id: String,
          recorded_at: Integer,
          source_id: String,
          source_type: Privy::UsageSourceType::OrSymbol,
          type:
            Privy::UsageSwapProviderFeeRecordedWebhookPayload::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        amount_usd:,
        # An opaque, stable identifier for this charge. Use it to deduplicate webhook
        # deliveries.
        event_id:,
        recorded_at:,
        source_id:,
        # The type of operation that incurred a usage charge.
        source_type:,
        # The type of webhook event.
        type:
      )
      end

      sig do
        override.returns(
          {
            amount_usd: String,
            event_id: String,
            recorded_at: Integer,
            source_id: String,
            source_type: Privy::UsageSourceType::TaggedSymbol,
            type:
              Privy::UsageSwapProviderFeeRecordedWebhookPayload::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::UsageSwapProviderFeeRecordedWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USAGE_SWAP_PROVIDER_FEE_RECORDED =
          T.let(
            :"usage.swap_provider_fee.recorded",
            Privy::UsageSwapProviderFeeRecordedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::UsageSwapProviderFeeRecordedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
