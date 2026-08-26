# typed: strong

module Privy
  module Models
    class KYCSubmitRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYCSubmitRequestBody, Privy::Internal::AnyHash)
        end

      # KYC verification data for headless submission.
      sig { returns(Privy::KYCSubmitData) }
      attr_reader :data

      sig { params(data: Privy::KYCSubmitData::OrHash).void }
      attr_writer :data

      # KYC/KYB provider identifier.
      sig { returns(Privy::KyxProvider::OrSymbol) }
      attr_accessor :provider

      # Client-side agreement ID for ToS acceptance.
      sig { returns(T.nilable(String)) }
      attr_reader :client_agreement_id

      sig { params(client_agreement_id: String).void }
      attr_writer :client_agreement_id

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

      # Request body for headless KYC data submission.
      sig do
        params(
          data: Privy::KYCSubmitData::OrHash,
          provider: Privy::KyxProvider::OrSymbol,
          client_agreement_id: String,
          endorsements: T::Array[String],
          environment: Privy::KyxEnvironment::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # KYC verification data for headless submission.
        data:,
        # KYC/KYB provider identifier.
        provider:,
        # Client-side agreement ID for ToS acceptance.
        client_agreement_id: nil,
        # Endorsements to request during KYC.
        endorsements: nil,
        # Provider environment (production or sandbox).
        environment: nil
      )
      end

      sig do
        override.returns(
          {
            data: Privy::KYCSubmitData,
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
