# typed: strong

module Privy
  module Models
    class KYCLinksRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYCLinksRequestBody, Privy::Internal::AnyHash)
        end

      # KYC/KYB provider identifier.
      sig { returns(Privy::KyxProvider::OrSymbol) }
      attr_accessor :provider

      # Client-side agreement ID for ToS acceptance.
      sig { returns(T.nilable(String)) }
      attr_reader :client_agreement_id

      sig { params(client_agreement_id: String).void }
      attr_writer :client_agreement_id

      # Email address for the KYC session.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Endorsements to request during KYC.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :endorsements

      sig { params(endorsements: T::Array[String]).void }
      attr_writer :endorsements

      # Provider environment (production or sandbox).
      sig { returns(T.nilable(Privy::KyxEnvironment::OrSymbol)) }
      attr_reader :environment

      sig { params(environment: Privy::KyxEnvironment::OrSymbol).void }
      attr_writer :environment

      # URI to redirect the user after completing KYC.
      sig { returns(T.nilable(String)) }
      attr_reader :redirect_uri

      sig { params(redirect_uri: String).void }
      attr_writer :redirect_uri

      # Request body for initiating a hosted KYC flow.
      sig do
        params(
          provider: Privy::KyxProvider::OrSymbol,
          client_agreement_id: String,
          email: String,
          endorsements: T::Array[String],
          environment: Privy::KyxEnvironment::OrSymbol,
          redirect_uri: String
        ).returns(T.attached_class)
      end
      def self.new(
        # KYC/KYB provider identifier.
        provider:,
        # Client-side agreement ID for ToS acceptance.
        client_agreement_id: nil,
        # Email address for the KYC session.
        email: nil,
        # Endorsements to request during KYC.
        endorsements: nil,
        # Provider environment (production or sandbox).
        environment: nil,
        # URI to redirect the user after completing KYC.
        redirect_uri: nil
      )
      end

      sig do
        override.returns(
          {
            provider: Privy::KyxProvider::OrSymbol,
            client_agreement_id: String,
            email: String,
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
