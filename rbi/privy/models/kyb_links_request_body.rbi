# typed: strong

module Privy
  module Models
    class KYBLinksRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYBLinksRequestBody, Privy::Internal::AnyHash)
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

      # Client-side agreement ID for ToS acceptance.
      sig { returns(T.nilable(String)) }
      attr_reader :client_agreement_id

      sig { params(client_agreement_id: String).void }
      attr_writer :client_agreement_id

      # Endorsements to request during KYB.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :endorsements

      sig { params(endorsements: T::Array[String]).void }
      attr_writer :endorsements

      # Provider environment (production or sandbox).
      sig { returns(T.nilable(Privy::KyxEnvironment::OrSymbol)) }
      attr_reader :environment

      sig { params(environment: Privy::KyxEnvironment::OrSymbol).void }
      attr_writer :environment

      # URI to redirect after completing KYB.
      sig { returns(T.nilable(String)) }
      attr_reader :redirect_uri

      sig { params(redirect_uri: String).void }
      attr_writer :redirect_uri

      # Request body for initiating a hosted KYB flow for an organization.
      sig do
        params(
          email: String,
          provider: Privy::KyxProvider::OrSymbol,
          business_name: String,
          client_agreement_id: String,
          endorsements: T::Array[String],
          environment: Privy::KyxEnvironment::OrSymbol,
          redirect_uri: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Email address for the organization.
        email:,
        # KYC/KYB provider identifier.
        provider:,
        # Legal name of the business.
        business_name: nil,
        # Client-side agreement ID for ToS acceptance.
        client_agreement_id: nil,
        # Endorsements to request during KYB.
        endorsements: nil,
        # Provider environment (production or sandbox).
        environment: nil,
        # URI to redirect after completing KYB.
        redirect_uri: nil
      )
      end

      sig do
        override.returns(
          {
            email: String,
            provider: Privy::KyxProvider::OrSymbol,
            business_name: String,
            client_agreement_id: String,
            endorsements: T::Array[String],
            environment: Privy::KyxEnvironment::OrSymbol,
            redirect_uri: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
