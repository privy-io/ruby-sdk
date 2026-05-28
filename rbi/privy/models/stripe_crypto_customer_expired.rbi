# typed: strong

module Privy
  module Models
    class StripeCryptoCustomerExpired < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::StripeCryptoCustomerExpired, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :crypto_customer_id

      sig { returns(Privy::StripeCryptoCustomerExpired::Status::OrSymbol) }
      attr_accessor :status

      # Expired onramp session. Token refresh failed, re-authentication required.
      sig do
        params(
          crypto_customer_id: String,
          status: Privy::StripeCryptoCustomerExpired::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(crypto_customer_id:, status:)
      end

      sig do
        override.returns(
          {
            crypto_customer_id: String,
            status: Privy::StripeCryptoCustomerExpired::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::StripeCryptoCustomerExpired::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPIRED =
          T.let(
            :expired,
            Privy::StripeCryptoCustomerExpired::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::StripeCryptoCustomerExpired::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
