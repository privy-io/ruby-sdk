# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderQuoteAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCustomOrderQuoteAsset,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :asset

      # Target asset for the other side of the custom order trade.
      sig { params(asset: String).returns(T.attached_class) }
      def self.new(asset:)
      end

      sig { override.returns({ asset: String }) }
      def to_hash
      end
    end
  end
end
