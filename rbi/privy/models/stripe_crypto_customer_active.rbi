# typed: strong

module Privy
  module Models
    class StripeCryptoCustomerActive < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::StripeCryptoCustomerActive, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :crypto_customer_id

      # Region derived from a Stripe user's country of residence.
      sig { returns(T.nilable(Privy::StripeKYCRegion::OrSymbol)) }
      attr_accessor :kyc_region

      sig { returns(T::Array[Privy::StripeKYCTier]) }
      attr_accessor :kyc_tiers

      sig { returns(T::Array[String]) }
      attr_accessor :provided_fields

      sig { returns(Privy::StripeCryptoCustomerActive::Status::OrSymbol) }
      attr_accessor :status

      sig { returns(T::Array[Privy::StripeVerification]) }
      attr_accessor :verifications

      # Active onramp session with customer verifications.
      sig do
        params(
          crypto_customer_id: String,
          kyc_region: T.nilable(Privy::StripeKYCRegion::OrSymbol),
          kyc_tiers: T::Array[Privy::StripeKYCTier::OrHash],
          provided_fields: T::Array[String],
          status: Privy::StripeCryptoCustomerActive::Status::OrSymbol,
          verifications: T::Array[Privy::StripeVerification::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        crypto_customer_id:,
        # Region derived from a Stripe user's country of residence.
        kyc_region:,
        kyc_tiers:,
        provided_fields:,
        status:,
        verifications:
      )
      end

      sig do
        override.returns(
          {
            crypto_customer_id: String,
            kyc_region: T.nilable(Privy::StripeKYCRegion::OrSymbol),
            kyc_tiers: T::Array[Privy::StripeKYCTier],
            provided_fields: T::Array[String],
            status: Privy::StripeCryptoCustomerActive::Status::OrSymbol,
            verifications: T::Array[Privy::StripeVerification]
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::StripeCryptoCustomerActive::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Privy::StripeCryptoCustomerActive::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::StripeCryptoCustomerActive::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
