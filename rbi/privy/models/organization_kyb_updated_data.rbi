# typed: strong

module Privy
  module Models
    class OrganizationKYBUpdatedData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OrganizationKYBUpdatedData, Privy::Internal::AnyHash)
        end

      # Capability statuses for the customer.
      sig { returns(Privy::KyxCapabilities) }
      attr_reader :capabilities

      sig { params(capabilities: Privy::KyxCapabilities::OrHash).void }
      attr_writer :capabilities

      sig { returns(T::Array[Privy::KyxEndorsement]) }
      attr_accessor :endorsements

      # KYB verification status in a KYB update event.
      sig { returns(Privy::OrganizationKYBUpdatedKYBData) }
      attr_reader :kyb

      sig { params(kyb: Privy::OrganizationKYBUpdatedKYBData::OrHash).void }
      attr_writer :kyb

      # KYC/KYB status for the user.
      sig { returns(String) }
      attr_accessor :status

      # Terms of service status in a KYB update event.
      sig { returns(Privy::OrganizationKYBUpdatedTosData) }
      attr_reader :tos

      sig { params(tos: Privy::OrganizationKYBUpdatedTosData::OrHash).void }
      attr_writer :tos

      # Full KYB state snapshot in a KYB update event.
      sig do
        params(
          capabilities: Privy::KyxCapabilities::OrHash,
          endorsements: T::Array[Privy::KyxEndorsement::OrHash],
          kyb: Privy::OrganizationKYBUpdatedKYBData::OrHash,
          status: String,
          tos: Privy::OrganizationKYBUpdatedTosData::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Capability statuses for the customer.
        capabilities:,
        endorsements:,
        # KYB verification status in a KYB update event.
        kyb:,
        # KYC/KYB status for the user.
        status:,
        # Terms of service status in a KYB update event.
        tos:
      )
      end

      sig do
        override.returns(
          {
            capabilities: Privy::KyxCapabilities,
            endorsements: T::Array[Privy::KyxEndorsement],
            kyb: Privy::OrganizationKYBUpdatedKYBData,
            status: String,
            tos: Privy::OrganizationKYBUpdatedTosData
          }
        )
      end
      def to_hash
      end
    end
  end
end
