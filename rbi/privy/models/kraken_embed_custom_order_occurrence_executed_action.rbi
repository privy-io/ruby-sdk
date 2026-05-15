# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderOccurrenceExecutedAction < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCustomOrderOccurrenceExecutedAction,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :quote_id

      # Executed action details for a custom order occurrence.
      sig { params(quote_id: String).returns(T.attached_class) }
      def self.new(quote_id:)
      end

      sig { override.returns({ quote_id: String }) }
      def to_hash
      end
    end
  end
end
