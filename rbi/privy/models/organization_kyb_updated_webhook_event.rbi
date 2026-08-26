# typed: strong

module Privy
  module Models
    class OrganizationKYBUpdatedWebhookEvent < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OrganizationKYBUpdatedWebhookEvent,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Hash[Symbol, T::Array[T.anything]]) }
      attr_accessor :changes

      # Full KYB state snapshot in a KYB update event.
      sig { returns(Privy::OrganizationKYBUpdatedData) }
      attr_reader :data

      sig { params(data: Privy::OrganizationKYBUpdatedData::OrHash).void }
      attr_writer :data

      # Provider environment (production or sandbox).
      sig { returns(Privy::KyxEnvironment::TaggedSymbol) }
      attr_accessor :environment

      sig { returns(String) }
      attr_accessor :organization_id

      # KYC/KYB provider identifier.
      sig { returns(Privy::KyxProvider::TaggedSymbol) }
      attr_accessor :provider

      # The type of webhook event.
      sig do
        returns(Privy::OrganizationKYBUpdatedWebhookEvent::Type::TaggedSymbol)
      end
      attr_accessor :type

      sig do
        params(
          changes: T::Hash[Symbol, T::Array[T.anything]],
          data: Privy::OrganizationKYBUpdatedData::OrHash,
          environment: Privy::KyxEnvironment::OrSymbol,
          organization_id: String,
          provider: Privy::KyxProvider::OrSymbol,
          type: Privy::OrganizationKYBUpdatedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        changes:,
        # Full KYB state snapshot in a KYB update event.
        data:,
        # Provider environment (production or sandbox).
        environment:,
        organization_id:,
        # KYC/KYB provider identifier.
        provider:,
        # The type of webhook event.
        type:
      )
      end

      sig do
        override.returns(
          {
            changes: T::Hash[Symbol, T::Array[T.anything]],
            data: Privy::OrganizationKYBUpdatedData,
            environment: Privy::KyxEnvironment::TaggedSymbol,
            organization_id: String,
            provider: Privy::KyxProvider::TaggedSymbol,
            type: Privy::OrganizationKYBUpdatedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::OrganizationKYBUpdatedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ORGANIZATION_KYB_UPDATED =
          T.let(
            :"organization.kyb.updated",
            Privy::OrganizationKYBUpdatedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::OrganizationKYBUpdatedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
