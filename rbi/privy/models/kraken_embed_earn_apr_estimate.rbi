# typed: strong

module Privy
  module Models
    class KrakenEmbedEarnAprEstimate < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedEarnAprEstimate, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :high

      sig { returns(String) }
      attr_accessor :low

      # Low and high estimate of the yield of an earn asset.
      sig { params(high: String, low: String).returns(T.attached_class) }
      def self.new(high:, low:)
      end

      sig { override.returns({ high: String, low: String }) }
      def to_hash
      end
    end
  end
end
