# typed: strong

module Privy
  module Models
    class ListCryptoDepositAccountsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ListCryptoDepositAccountsResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::CryptoDepositAddressRoute]) }
      attr_accessor :data

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # A page of active crypto deposit accounts for a destination wallet.
      sig do
        params(
          data: T::Array[Privy::CryptoDepositAddressRoute::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(data:, next_cursor:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Privy::CryptoDepositAddressRoute],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
