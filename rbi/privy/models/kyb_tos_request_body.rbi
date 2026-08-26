# typed: strong

module Privy
  module Models
    class KYBTosRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYBTosRequestBody, Privy::Internal::AnyHash)
        end

      # Email address for the organization.
      sig { returns(String) }
      attr_accessor :email

      # KYC/KYB provider identifier.
      sig { returns(Privy::KyxProvider::OrSymbol) }
      attr_accessor :provider

      # Legal name of the business.
      sig { returns(T.nilable(String)) }
      attr_reader :business_name

      sig { params(business_name: String).void }
      attr_writer :business_name

      # Provider environment (production or sandbox).
      sig { returns(T.nilable(Privy::KyxEnvironment::OrSymbol)) }
      attr_reader :environment

      sig { params(environment: Privy::KyxEnvironment::OrSymbol).void }
      attr_writer :environment

      # Request body for initiating Terms of Service acceptance for an organization.
      sig do
        params(
          email: String,
          provider: Privy::KyxProvider::OrSymbol,
          business_name: String,
          environment: Privy::KyxEnvironment::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Email address for the organization.
        email:,
        # KYC/KYB provider identifier.
        provider:,
        # Legal name of the business.
        business_name: nil,
        # Provider environment (production or sandbox).
        environment: nil
      )
      end

      sig do
        override.returns(
          {
            email: String,
            provider: Privy::KyxProvider::OrSymbol,
            business_name: String,
            environment: Privy::KyxEnvironment::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
