# typed: strong

module Privy
  module Models
    class TransactionList < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::TransactionList, Privy::Internal::AnyHash) }

      sig { returns(T::Array[Privy::Transaction]) }
      attr_accessor :transactions

      # A list of transactions.
      sig do
        params(transactions: T::Array[Privy::Transaction::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(transactions:)
      end

      sig { override.returns({ transactions: T::Array[Privy::Transaction] }) }
      def to_hash
      end
    end
  end
end
