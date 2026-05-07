# typed: strong

module Privy
  module Models
    class Currency < Privy::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Privy::Currency, Privy::Internal::AnyHash) }

      # A valid CAIP-2 chain ID (e.g. 'eip155:1').
      sig { returns(String) }
      attr_accessor :chain

      # A currency asset type.
      sig { returns(T.nilable(Privy::CurrencyAsset::TaggedSymbol)) }
      attr_reader :asset

      sig { params(asset: Privy::CurrencyAsset::OrSymbol).void }
      attr_writer :asset

      # A crypto currency identified by a CAIP-2 chain ID and optional asset.
      sig do
        params(chain: String, asset: Privy::CurrencyAsset::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # A valid CAIP-2 chain ID (e.g. 'eip155:1').
        chain:,
        # A currency asset type.
        asset: nil
      )
      end

      sig do
        override.returns(
          { chain: String, asset: Privy::CurrencyAsset::TaggedSymbol }
        )
      end
      def to_hash
      end
    end
  end
end
