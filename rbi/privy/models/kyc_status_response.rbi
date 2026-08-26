# typed: strong

module Privy
  module Models
    class KYCStatusResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYCStatusResponse, Privy::Internal::AnyHash)
        end

      # Capability statuses for the customer.
      sig { returns(Privy::KyxCapabilities) }
      attr_reader :capabilities

      sig { params(capabilities: Privy::KyxCapabilities::OrHash).void }
      attr_writer :capabilities

      sig { returns(T::Array[Privy::KyxEndorsement]) }
      attr_accessor :endorsements

      # Provider environment (production or sandbox).
      sig { returns(Privy::KyxEnvironment::TaggedSymbol) }
      attr_accessor :environment

      # Items that will be required in the future.
      sig { returns(T::Array[String]) }
      attr_accessor :future_requirements_due

      # Verification status detail for a KYC or KYB check.
      sig { returns(Privy::KyxVerificationStatusDetail) }
      attr_reader :kyc

      sig { params(kyc: Privy::KyxVerificationStatusDetail::OrHash).void }
      attr_writer :kyc

      # KYC/KYB provider identifier.
      sig { returns(Privy::KyxProvider::TaggedSymbol) }
      attr_accessor :provider

      # Top-level items still needed (e.g. link a bank account).
      sig { returns(T::Array[String]) }
      attr_accessor :requirements_due

      # KYC/KYB status for the user.
      sig { returns(String) }
      attr_accessor :status

      # Terms of Service acceptance status for a KYC or KYB flow.
      sig { returns(Privy::KyxTosStatusDetail) }
      attr_reader :tos

      sig { params(tos: Privy::KyxTosStatusDetail::OrHash).void }
      attr_writer :tos

      # Full KYC status for a user with a given provider.
      sig do
        params(
          capabilities: Privy::KyxCapabilities::OrHash,
          endorsements: T::Array[Privy::KyxEndorsement::OrHash],
          environment: Privy::KyxEnvironment::OrSymbol,
          future_requirements_due: T::Array[String],
          kyc: Privy::KyxVerificationStatusDetail::OrHash,
          provider: Privy::KyxProvider::OrSymbol,
          requirements_due: T::Array[String],
          status: String,
          tos: Privy::KyxTosStatusDetail::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Capability statuses for the customer.
        capabilities:,
        endorsements:,
        # Provider environment (production or sandbox).
        environment:,
        # Items that will be required in the future.
        future_requirements_due:,
        # Verification status detail for a KYC or KYB check.
        kyc:,
        # KYC/KYB provider identifier.
        provider:,
        # Top-level items still needed (e.g. link a bank account).
        requirements_due:,
        # KYC/KYB status for the user.
        status:,
        # Terms of Service acceptance status for a KYC or KYB flow.
        tos:
      )
      end

      sig do
        override.returns(
          {
            capabilities: Privy::KyxCapabilities,
            endorsements: T::Array[Privy::KyxEndorsement],
            environment: Privy::KyxEnvironment::TaggedSymbol,
            future_requirements_due: T::Array[String],
            kyc: Privy::KyxVerificationStatusDetail,
            provider: Privy::KyxProvider::TaggedSymbol,
            requirements_due: T::Array[String],
            status: String,
            tos: Privy::KyxTosStatusDetail
          }
        )
      end
      def to_hash
      end
    end
  end
end
