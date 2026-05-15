# typed: strong

module Privy
  module Models
    class KrakenEmbedCreateCustomOrderInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCreateCustomOrderInput,
            Privy::Internal::AnyHash
          )
        end

      # Trade action for a custom order.
      sig { returns(Privy::KrakenEmbedCustomOrderAction) }
      attr_reader :action

      sig { params(action: Privy::KrakenEmbedCustomOrderAction::OrHash).void }
      attr_writer :action

      sig { returns(String) }
      attr_accessor :name

      # Price trigger for a custom order. The order executes when base_asset/quote_asset
      # rate meets the condition against target_price.
      sig { returns(Privy::KrakenEmbedCustomOrderTrigger) }
      attr_reader :trigger

      sig { params(trigger: Privy::KrakenEmbedCustomOrderTrigger::OrHash).void }
      attr_writer :trigger

      sig { returns(String) }
      attr_accessor :user_id

      # Request body for creating a custom order.
      sig do
        params(
          action: Privy::KrakenEmbedCustomOrderAction::OrHash,
          name: String,
          trigger: Privy::KrakenEmbedCustomOrderTrigger::OrHash,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Trade action for a custom order.
        action:,
        name:,
        # Price trigger for a custom order. The order executes when base_asset/quote_asset
        # rate meets the condition against target_price.
        trigger:,
        user_id:
      )
      end

      sig do
        override.returns(
          {
            action: Privy::KrakenEmbedCustomOrderAction,
            name: String,
            trigger: Privy::KrakenEmbedCustomOrderTrigger,
            user_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
