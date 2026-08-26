# typed: strong

module Privy
  module Models
    class UserKYCUpdatedData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::UserKYCUpdatedData, Privy::Internal::AnyHash)
        end

      # Capability statuses for the customer.
      sig { returns(Privy::KyxCapabilities) }
      attr_reader :capabilities

      sig { params(capabilities: Privy::KyxCapabilities::OrHash).void }
      attr_writer :capabilities

      sig { returns(T::Array[Privy::KyxEndorsement]) }
      attr_accessor :endorsements

      # KYC verification status in a KYC update event.
      sig { returns(Privy::UserKYCUpdatedKYCData) }
      attr_reader :kyc

      sig { params(kyc: Privy::UserKYCUpdatedKYCData::OrHash).void }
      attr_writer :kyc

      # KYC/KYB status for the user.
      sig { returns(String) }
      attr_accessor :status

      # Terms of service status in a KYC update event.
      sig { returns(Privy::UserKYCUpdatedTosData) }
      attr_reader :tos

      sig { params(tos: Privy::UserKYCUpdatedTosData::OrHash).void }
      attr_writer :tos

      # Full KYC state snapshot in a KYC update event.
      sig do
        params(
          capabilities: Privy::KyxCapabilities::OrHash,
          endorsements: T::Array[Privy::KyxEndorsement::OrHash],
          kyc: Privy::UserKYCUpdatedKYCData::OrHash,
          status: String,
          tos: Privy::UserKYCUpdatedTosData::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Capability statuses for the customer.
        capabilities:,
        endorsements:,
        # KYC verification status in a KYC update event.
        kyc:,
        # KYC/KYB status for the user.
        status:,
        # Terms of service status in a KYC update event.
        tos:
      )
      end

      sig do
        override.returns(
          {
            capabilities: Privy::KyxCapabilities,
            endorsements: T::Array[Privy::KyxEndorsement],
            kyc: Privy::UserKYCUpdatedKYCData,
            status: String,
            tos: Privy::UserKYCUpdatedTosData
          }
        )
      end
      def to_hash
      end
    end
  end
end
