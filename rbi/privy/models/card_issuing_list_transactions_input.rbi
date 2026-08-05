# typed: strong

module Privy
  module Models
    class CardIssuingListTransactionsInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingListTransactionsInput,
            Privy::Internal::AnyHash
          )
        end

      # The Privy API environment.
      sig { returns(Privy::Environment::OrSymbol) }
      attr_accessor :environment

      sig { returns(T.nilable(String)) }
      attr_reader :ending_before

      sig { params(ending_before: String).void }
      attr_writer :ending_before

      sig { returns(T.nilable(Float)) }
      attr_accessor :limit

      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      # Query parameters for listing Stripe Issuing transactions for a Privy card.
      sig do
        params(
          environment: Privy::Environment::OrSymbol,
          ending_before: String,
          limit: T.nilable(Float),
          starting_after: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The Privy API environment.
        environment:,
        ending_before: nil,
        limit: nil,
        starting_after: nil
      )
      end

      sig do
        override.returns(
          {
            environment: Privy::Environment::OrSymbol,
            ending_before: String,
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
