# typed: strong

module Privy
  module Models
    class CardIssuingCardholder < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingCardholder, Privy::Internal::AnyHash)
        end

      # Cardholder name printed on the card, or null when unavailable.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Cardholder metadata for a card.
      sig { params(name: T.nilable(String)).returns(T.attached_class) }
      def self.new(
        # Cardholder name printed on the card, or null when unavailable.
        name:
      )
      end

      sig { override.returns({ name: T.nilable(String) }) }
      def to_hash
      end
    end
  end
end
