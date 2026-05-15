# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderAmount < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedCustomOrderAmount, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :asset

      sig do
        returns(
          T.nilable(Privy::KrakenEmbedCustomOrderAmount::AssetClass::OrSymbol)
        )
      end
      attr_reader :asset_class

      sig do
        params(
          asset_class: Privy::KrakenEmbedCustomOrderAmount::AssetClass::OrSymbol
        ).void
      end
      attr_writer :asset_class

      # Asset amount for custom order actions.
      sig do
        params(
          amount: String,
          asset: String,
          asset_class: Privy::KrakenEmbedCustomOrderAmount::AssetClass::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(amount:, asset:, asset_class: nil)
      end

      sig do
        override.returns(
          {
            amount: String,
            asset: String,
            asset_class:
              Privy::KrakenEmbedCustomOrderAmount::AssetClass::OrSymbol
          }
        )
      end
      def to_hash
      end

      module AssetClass
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::KrakenEmbedCustomOrderAmount::AssetClass)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CURRENCY =
          T.let(
            :currency,
            Privy::KrakenEmbedCustomOrderAmount::AssetClass::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedCustomOrderAmount::AssetClass::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
