# typed: strong

module Privy
  module Models
    class CardIssuingCardsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingCardsResponse, Privy::Internal::AnyHash)
        end

      sig { returns(T::Array[Privy::CardIssuingCardResponse]) }
      attr_accessor :data

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # Stripe Issuing cards bound to the authenticated Privy user.
      sig do
        params(
          data: T::Array[Privy::CardIssuingCardResponse::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(data:, next_cursor:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Privy::CardIssuingCardResponse],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
