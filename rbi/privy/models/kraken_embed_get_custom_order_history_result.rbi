# typed: strong

module Privy
  module Models
    class KrakenEmbedGetCustomOrderHistoryResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetCustomOrderHistoryResult,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::KrakenEmbedCustomOrderOccurrence]) }
      attr_accessor :history

      # Result payload for custom order history response.
      sig do
        params(
          history: T::Array[Privy::KrakenEmbedCustomOrderOccurrence::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(history:)
      end

      sig do
        override.returns(
          { history: T::Array[Privy::KrakenEmbedCustomOrderOccurrence] }
        )
      end
      def to_hash
      end
    end
  end
end
