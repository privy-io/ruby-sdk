# typed: strong

module Privy
  module Models
    class GetStripeCryptoCustomerResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::GetStripeCryptoCustomerResponse,
            Privy::Internal::AnyHash
          )
        end

      # Active onramp session with customer verifications.
      sig do
        returns(
          T.any(
            Privy::StripeCryptoCustomerActive,
            Privy::StripeCryptoCustomerExpired,
            Privy::StripeCryptoCustomerNone
          )
        )
      end
      attr_accessor :data

      # Stripe onramp session status and customer verification info.
      sig do
        params(
          data:
            T.any(
              Privy::StripeCryptoCustomerActive::OrHash,
              Privy::StripeCryptoCustomerExpired::OrHash,
              Privy::StripeCryptoCustomerNone::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Active onramp session with customer verifications.
        data:
      )
      end

      sig do
        override.returns(
          {
            data:
              T.any(
                Privy::StripeCryptoCustomerActive,
                Privy::StripeCryptoCustomerExpired,
                Privy::StripeCryptoCustomerNone
              )
          }
        )
      end
      def to_hash
      end

      # Active onramp session with customer verifications.
      module Data
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::StripeCryptoCustomerActive,
              Privy::StripeCryptoCustomerExpired,
              Privy::StripeCryptoCustomerNone
            )
          end

        sig do
          override.returns(
            T::Array[Privy::GetStripeCryptoCustomerResponse::Data::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
