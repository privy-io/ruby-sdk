# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderTrigger < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedCustomOrderTrigger, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :base_asset

      # Comparison operator for a custom order price trigger.
      sig { returns(Privy::KrakenEmbedCustomOrderTriggerCondition::OrSymbol) }
      attr_accessor :condition

      sig { returns(String) }
      attr_accessor :quote_asset

      sig { returns(String) }
      attr_accessor :target_price

      sig { returns(Privy::KrakenEmbedCustomOrderTrigger::Type::OrSymbol) }
      attr_accessor :type

      # Price trigger for a custom order. The order executes when base_asset/quote_asset
      # rate meets the condition against target_price.
      sig do
        params(
          base_asset: String,
          condition: Privy::KrakenEmbedCustomOrderTriggerCondition::OrSymbol,
          quote_asset: String,
          target_price: String,
          type: Privy::KrakenEmbedCustomOrderTrigger::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        base_asset:,
        # Comparison operator for a custom order price trigger.
        condition:,
        quote_asset:,
        target_price:,
        type:
      )
      end

      sig do
        override.returns(
          {
            base_asset: String,
            condition: Privy::KrakenEmbedCustomOrderTriggerCondition::OrSymbol,
            quote_asset: String,
            target_price: String,
            type: Privy::KrakenEmbedCustomOrderTrigger::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::KrakenEmbedCustomOrderTrigger::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRICE =
          T.let(
            :price,
            Privy::KrakenEmbedCustomOrderTrigger::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::KrakenEmbedCustomOrderTrigger::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
