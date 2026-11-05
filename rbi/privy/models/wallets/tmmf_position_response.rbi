# typed: strong

module Privy
  module Models
    module Wallets
      class TmmfPositionResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::TmmfPositionResponse,
              Privy::Internal::AnyHash
            )
          end

        # Cursor of the next page of positions, or null on the last page.
        sig { returns(T.nilable(String)) }
        attr_accessor :next_cursor

        # A page of the wallet's positions, one per registered fund and chain.
        sig { returns(T::Array[Privy::Wallets::TmmfPosition]) }
        attr_accessor :positions

        # ID of the Privy wallet holding the positions.
        sig { returns(String) }
        attr_accessor :wallet_id

        # A page of a wallet's tMMF positions for all providers: one per fund and chain
        # the wallet is registered for.
        sig do
          params(
            next_cursor: T.nilable(String),
            positions: T::Array[Privy::Wallets::TmmfPosition::OrHash],
            wallet_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Cursor of the next page of positions, or null on the last page.
          next_cursor:,
          # A page of the wallet's positions, one per registered fund and chain.
          positions:,
          # ID of the Privy wallet holding the positions.
          wallet_id:
        )
        end

        sig do
          override.returns(
            {
              next_cursor: T.nilable(String),
              positions: T::Array[Privy::Wallets::TmmfPosition],
              wallet_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
