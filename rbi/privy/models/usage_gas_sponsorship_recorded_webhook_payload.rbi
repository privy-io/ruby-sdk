# typed: strong

module Privy
  module Models
    class UsageGasSponsorshipRecordedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::UsageGasSponsorshipRecordedWebhookPayload,
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
          Privy::UsageGasSponsorshipRecordedWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Payload for the usage.gas_sponsorship.recorded webhook event (sponsored network
      # gas).
      sig do
        params(
          amount_usd: String,
          event_id: String,
          recorded_at: Integer,
          source_id: String,
          source_type: Privy::UsageSourceType::OrSymbol,
          type: Privy::UsageGasSponsorshipRecordedWebhookPayload::Type::OrSymbol
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
              Privy::UsageGasSponsorshipRecordedWebhookPayload::Type::TaggedSymbol
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
              Privy::UsageGasSponsorshipRecordedWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USAGE_GAS_SPONSORSHIP_RECORDED =
          T.let(
            :"usage.gas_sponsorship.recorded",
            Privy::UsageGasSponsorshipRecordedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::UsageGasSponsorshipRecordedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
