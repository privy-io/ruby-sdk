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

      sig { returns(T.nilable(Float)) }
      attr_accessor :limit

      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      # Query parameters for listing cards bound to the authenticated Privy user.
      sig do
        params(
          environment: Privy::Environment::OrSymbol,
          limit: T.nilable(Float),
          starting_after: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The Privy API environment.
        environment:,
        limit: nil,
        starting_after: nil
      )
      end

      sig do
        override.returns(
          {
            environment: Privy::Environment::OrSymbol,
            limit: T.nilable(Float),
            starting_after: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
