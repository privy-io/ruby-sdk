# typed: strong

module Privy
  module Models
    class ListWalletActionsQuery < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ListWalletActionsQuery, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(Float)) }
      attr_accessor :limit

      # Type of wallet action
      sig { returns(T.nilable(Privy::WalletActionType::OrSymbol)) }
      attr_reader :type

      sig { params(type: Privy::WalletActionType::OrSymbol).void }
      attr_writer :type

      # Query parameters for listing wallet actions.
      sig do
        params(
          cursor: String,
          limit: T.nilable(Float),
          type: Privy::WalletActionType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        cursor: nil,
        limit: nil,
        # Type of wallet action
        type: nil
      )
      end

      sig do
        override.returns(
          {
            cursor: String,
            limit: T.nilable(Float),
            type: Privy::WalletActionType::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
