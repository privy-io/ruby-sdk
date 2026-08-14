# typed: strong

module Privy
  module Models
    class CardIssuingListCardsInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingListCardsInput, Privy::Internal::AnyHash)
        end

      # The Privy API environment.
      sig { returns(Privy::Environment::OrSymbol) }
      attr_accessor :environment

      # Cursor returned by the previous page.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Maximum number of cards to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Query parameters for listing cards bound to the authenticated Privy user.
      sig do
        params(
          environment: Privy::Environment::OrSymbol,
          cursor: String,
          limit: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # The Privy API environment.
        environment:,
        # Cursor returned by the previous page.
        cursor: nil,
        # Maximum number of cards to return.
        limit: nil
      )
      end

      sig do
        override.returns(
          {
            environment: Privy::Environment::OrSymbol,
            cursor: String,
            limit: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
