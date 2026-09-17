# typed: strong

module Privy
  module Models
    class KYBSubmitRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYBSubmitRequestBody, Privy::Internal::AnyHash)
        end

      # KYB verification data for headless submission. Fields are individually optional
      # because the provider accepts partial submissions and grants endorsements once
      # enough data has arrived; a partial submission can be completed by calling the
      # endpoint again.
      sig { returns(Privy::KYBSubmitData) }
      attr_reader :data

      sig { params(data: Privy::KYBSubmitData::OrHash).void }
      attr_writer :data

      # KYC/KYB provider identifier.
      sig { returns(Privy::KyxProvider::OrSymbol) }
      attr_accessor :provider

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

      # Request body for headless KYB data submission.
      sig do
        params(
          data: Privy::KYBSubmitData::OrHash,
          provider: Privy::KyxProvider::OrSymbol,
          client_agreement_id: String,
          endorsements: T::Array[String],
          environment: Privy::KyxEnvironment::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # KYB verification data for headless submission. Fields are individually optional
        # because the provider accepts partial submissions and grants endorsements once
        # enough data has arrived; a partial submission can be completed by calling the
        # endpoint again.
        data:,
        # KYC/KYB provider identifier.
        provider:,
        # Client-side agreement ID for ToS acceptance.
        client_agreement_id: nil,
        # Endorsements to request during KYB.
        endorsements: nil,
        # Provider environment (production or sandbox).
        environment: nil
      )
      end

      sig do
        override.returns(
          {
            data: Privy::KYBSubmitData,
            provider: Privy::KyxProvider::OrSymbol,
            client_agreement_id: String,
            endorsements: T::Array[String],
            environment: Privy::KyxEnvironment::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
