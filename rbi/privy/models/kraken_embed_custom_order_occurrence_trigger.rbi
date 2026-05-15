# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderOccurrenceTrigger < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCustomOrderOccurrenceTrigger,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::KrakenEmbedCustomOrderOccurrenceTrigger::Type::OrSymbol)
      end
      attr_accessor :type

      # Trigger metadata for a custom order occurrence.
      sig do
        params(
          type: Privy::KrakenEmbedCustomOrderOccurrenceTrigger::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(type:)
      end

      sig do
        override.returns(
          {
            type: Privy::KrakenEmbedCustomOrderOccurrenceTrigger::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::KrakenEmbedCustomOrderOccurrenceTrigger::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TIME =
          T.let(
            :time,
            Privy::KrakenEmbedCustomOrderOccurrenceTrigger::Type::TaggedSymbol
          )
        PRICE =
          T.let(
            :price,
            Privy::KrakenEmbedCustomOrderOccurrenceTrigger::Type::TaggedSymbol
          )
        CRYPTO_DEPOSIT =
          T.let(
            :crypto_deposit,
            Privy::KrakenEmbedCustomOrderOccurrenceTrigger::Type::TaggedSymbol
          )
        MARKET_OPEN =
          T.let(
            :market_open,
            Privy::KrakenEmbedCustomOrderOccurrenceTrigger::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedCustomOrderOccurrenceTrigger::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
