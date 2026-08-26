# typed: strong

module Privy
  module Models
    class WalletDepositAccountDepositStartedWebhookEvent < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletDepositAccountDepositStartedWebhookEvent,
            Privy::Internal::AnyHash
          )
        end

      # Details of a fiat deposit that has begun processing into a deposit account.
      sig { returns(Privy::DepositStartedData) }
      attr_reader :data

      sig { params(data: Privy::DepositStartedData::OrHash).void }
      attr_writer :data

      sig { returns(String) }
      attr_accessor :deposit_account_id

      sig do
        returns(
          Privy::WalletDepositAccountDepositStartedWebhookEvent::DepositType::TaggedSymbol
        )
      end
      attr_accessor :deposit_type

      # The Privy API environment.
      sig { returns(Privy::Environment::TaggedSymbol) }
      attr_accessor :environment

      # Supported fiat orchestration providers.
      sig { returns(Privy::OrchestrationProvider::TaggedSymbol) }
      attr_accessor :provider

      # The deposit's ID in the provider's system (e.g. Bridge), not a Privy ID.
      sig { returns(String) }
      attr_accessor :provider_deposit_id

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletDepositAccountDepositStartedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :wallet_id

      sig do
        params(
          data: Privy::DepositStartedData::OrHash,
          deposit_account_id: String,
          deposit_type:
            Privy::WalletDepositAccountDepositStartedWebhookEvent::DepositType::OrSymbol,
          environment: Privy::Environment::OrSymbol,
          provider: Privy::OrchestrationProvider::OrSymbol,
          provider_deposit_id: String,
          type:
            Privy::WalletDepositAccountDepositStartedWebhookEvent::Type::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Details of a fiat deposit that has begun processing into a deposit account.
        data:,
        deposit_account_id:,
        deposit_type:,
        # The Privy API environment.
        environment:,
        # Supported fiat orchestration providers.
        provider:,
        # The deposit's ID in the provider's system (e.g. Bridge), not a Privy ID.
        provider_deposit_id:,
        # The type of webhook event.
        type:,
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::DepositStartedData,
            deposit_account_id: String,
            deposit_type:
              Privy::WalletDepositAccountDepositStartedWebhookEvent::DepositType::TaggedSymbol,
            environment: Privy::Environment::TaggedSymbol,
            provider: Privy::OrchestrationProvider::TaggedSymbol,
            provider_deposit_id: String,
            type:
              Privy::WalletDepositAccountDepositStartedWebhookEvent::Type::TaggedSymbol,
            wallet_id: String
          }
        )
      end
      def to_hash
      end

      module DepositType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::WalletDepositAccountDepositStartedWebhookEvent::DepositType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIAT =
          T.let(
            :fiat,
            Privy::WalletDepositAccountDepositStartedWebhookEvent::DepositType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletDepositAccountDepositStartedWebhookEvent::DepositType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::WalletDepositAccountDepositStartedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_DEPOSIT_ACCOUNT_DEPOSIT_STARTED =
          T.let(
            :"wallet.deposit_account.deposit_started",
            Privy::WalletDepositAccountDepositStartedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletDepositAccountDepositStartedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
