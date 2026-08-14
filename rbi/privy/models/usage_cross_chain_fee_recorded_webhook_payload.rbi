# typed: strong

module Privy
  module Models
    class UsageCrossChainFeeRecordedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::UsageCrossChainFeeRecordedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :amount_usd

      sig { returns(Integer) }
      attr_accessor :recorded_at

      sig { returns(String) }
      attr_accessor :source_id

      # The type of wallet action that incurred a usage charge.
      sig { returns(Privy::UsageSourceType::TaggedSymbol) }
      attr_accessor :source_type

      # The type of webhook event.
      sig do
        returns(
          Privy::UsageCrossChainFeeRecordedWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Payload for the usage.cross_chain_fee.recorded webhook event (Privy fee on a
      # cross-chain transfer or swap).
      sig do
        params(
          amount_usd: String,
          recorded_at: Integer,
          source_id: String,
          source_type: Privy::UsageSourceType::OrSymbol,
          type: Privy::UsageCrossChainFeeRecordedWebhookPayload::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        amount_usd:,
        recorded_at:,
        source_id:,
        # The type of wallet action that incurred a usage charge.
        source_type:,
        # The type of webhook event.
        type:
      )
      end

      sig do
        override.returns(
          {
            amount_usd: String,
            recorded_at: Integer,
            source_id: String,
            source_type: Privy::UsageSourceType::TaggedSymbol,
            type:
              Privy::UsageCrossChainFeeRecordedWebhookPayload::Type::TaggedSymbol
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
            T.all(Symbol, Privy::UsageCrossChainFeeRecordedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USAGE_CROSS_CHAIN_FEE_RECORDED =
          T.let(
            :"usage.cross_chain_fee.recorded",
            Privy::UsageCrossChainFeeRecordedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::UsageCrossChainFeeRecordedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
