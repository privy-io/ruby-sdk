# typed: strong

module Privy
  module Models
    class UserKYCUpdatedWebhookEvent < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::UserKYCUpdatedWebhookEvent, Privy::Internal::AnyHash)
        end

      sig { returns(T::Hash[Symbol, T::Array[T.anything]]) }
      attr_accessor :changes

      # Full KYC state snapshot in a KYC update event.
      sig { returns(Privy::UserKYCUpdatedData) }
      attr_reader :data

      sig { params(data: Privy::UserKYCUpdatedData::OrHash).void }
      attr_writer :data

      # Provider environment (production or sandbox).
      sig { returns(Privy::KyxEnvironment::TaggedSymbol) }
      attr_accessor :environment

      # The ID of this event, stable across repeat deliveries so clients can deduplicate
      # on it.
      sig { returns(String) }
      attr_accessor :event_id

      # KYC/KYB provider identifier.
      sig { returns(Privy::KyxProvider::TaggedSymbol) }
      attr_accessor :provider

      # The type of webhook event.
      sig { returns(Privy::UserKYCUpdatedWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :user_id

      sig do
        params(
          changes: T::Hash[Symbol, T::Array[T.anything]],
          data: Privy::UserKYCUpdatedData::OrHash,
          environment: Privy::KyxEnvironment::OrSymbol,
          event_id: String,
          provider: Privy::KyxProvider::OrSymbol,
          type: Privy::UserKYCUpdatedWebhookEvent::Type::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        changes:,
        # Full KYC state snapshot in a KYC update event.
        data:,
        # Provider environment (production or sandbox).
        environment:,
        # The ID of this event, stable across repeat deliveries so clients can deduplicate
        # on it.
        event_id:,
        # KYC/KYB provider identifier.
        provider:,
        # The type of webhook event.
        type:,
        user_id:
      )
      end

      sig do
        override.returns(
          {
            changes: T::Hash[Symbol, T::Array[T.anything]],
            data: Privy::UserKYCUpdatedData,
            environment: Privy::KyxEnvironment::TaggedSymbol,
            event_id: String,
            provider: Privy::KyxProvider::TaggedSymbol,
            type: Privy::UserKYCUpdatedWebhookEvent::Type::TaggedSymbol,
            user_id: String
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
            T.all(Symbol, Privy::UserKYCUpdatedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER_KYC_UPDATED =
          T.let(
            :"user.kyc.updated",
            Privy::UserKYCUpdatedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::UserKYCUpdatedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
