# typed: strong

module Privy
  module Models
    class CreateCryptoDepositAccountResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateCryptoDepositAccountResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::CryptoDepositAddressRoute]) }
      attr_accessor :deposit_addresses

      # Response returned after creating a crypto deposit account.
      sig do
        params(
          deposit_addresses: T::Array[Privy::CryptoDepositAddressRoute::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(deposit_addresses:)
      end

      sig do
        override.returns(
          { deposit_addresses: T::Array[Privy::CryptoDepositAddressRoute] }
        )
      end
      def to_hash
      end
    end
  end
end
