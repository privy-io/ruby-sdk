# typed: strong

module Privy
  module Models
    module Wallets
      class ListWalletActionsQuery < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::ListWalletActionsQuery,
              Privy::Internal::AnyHash
            )
          end

        # Cursor returned by the previous page.
        sig { returns(T.nilable(String)) }
        attr_reader :cursor

        sig { params(cursor: String).void }
        attr_writer :cursor

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Type of wallet action
        sig do
          returns(
            T.nilable(T.any(Privy::Wallets::WalletActionType::OrSymbol, String))
          )
        end
        attr_reader :type

        sig do
          params(
            type: T.any(Privy::Wallets::WalletActionType::OrSymbol, String)
          ).void
        end
        attr_writer :type

        # Query parameters for listing wallet actions.
        sig do
          params(
            cursor: String,
            limit: Integer,
            type: T.any(Privy::Wallets::WalletActionType::OrSymbol, String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Cursor returned by the previous page.
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
              limit: Integer,
              type: T.any(Privy::Wallets::WalletActionType::OrSymbol, String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
