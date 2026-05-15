# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrder < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedCustomOrder, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Trade action for a custom order.
      sig { returns(Privy::KrakenEmbedCustomOrderAction) }
      attr_reader :action

      sig { params(action: Privy::KrakenEmbedCustomOrderAction::OrHash).void }
      attr_writer :action

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :name

      # Custom order status with optional reason for cancelled or paused states.
      sig { returns(Privy::KrakenEmbedCustomOrderStatus) }
      attr_reader :status

      sig { params(status: Privy::KrakenEmbedCustomOrderStatus::OrHash).void }
      attr_writer :status

      # Price trigger for a custom order. The order executes when base_asset/quote_asset
      # rate meets the condition against target_price.
      sig { returns(Privy::KrakenEmbedCustomOrderTrigger) }
      attr_reader :trigger

      sig { params(trigger: Privy::KrakenEmbedCustomOrderTrigger::OrHash).void }
      attr_writer :trigger

      sig { returns(Time) }
      attr_accessor :updated_at

      # Full custom order object.
      sig do
        params(
          id: String,
          action: Privy::KrakenEmbedCustomOrderAction::OrHash,
          created_at: Time,
          name: String,
          status: Privy::KrakenEmbedCustomOrderStatus::OrHash,
          trigger: Privy::KrakenEmbedCustomOrderTrigger::OrHash,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Trade action for a custom order.
        action:,
        created_at:,
        name:,
        # Custom order status with optional reason for cancelled or paused states.
        status:,
        # Price trigger for a custom order. The order executes when base_asset/quote_asset
        # rate meets the condition against target_price.
        trigger:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            action: Privy::KrakenEmbedCustomOrderAction,
            created_at: Time,
            name: String,
            status: Privy::KrakenEmbedCustomOrderStatus,
            trigger: Privy::KrakenEmbedCustomOrderTrigger,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
