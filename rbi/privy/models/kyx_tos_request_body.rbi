# typed: strong

module Privy
  module Models
    class KyxTosRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KyxTosRequestBody, Privy::Internal::AnyHash)
        end

      # KYC/KYB provider identifier.
      sig { returns(Privy::KyxProvider::OrSymbol) }
      attr_accessor :provider

      # Email for the user. If not provided, falls back to the user's linked email.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Provider environment (production or sandbox).
      sig { returns(T.nilable(Privy::KyxEnvironment::OrSymbol)) }
      attr_reader :environment

      sig { params(environment: Privy::KyxEnvironment::OrSymbol).void }
      attr_writer :environment

      # Request body for initiating Terms of Service acceptance.
      sig do
        params(
          provider: Privy::KyxProvider::OrSymbol,
          email: String,
          environment: Privy::KyxEnvironment::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # KYC/KYB provider identifier.
        provider:,
        # Email for the user. If not provided, falls back to the user's linked email.
        email: nil,
        # Provider environment (production or sandbox).
        environment: nil
      )
      end

      sig do
        override.returns(
          {
            provider: Privy::KyxProvider::OrSymbol,
            email: String,
            environment: Privy::KyxEnvironment::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
