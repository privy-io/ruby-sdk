# typed: strong

module Privy
  module Models
    class WalletDepositAccountDepositFailedWebhookEvent < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletDepositAccountDepositFailedWebhookEvent,
            Privy::Internal::AnyHash
          )
        end

      # Details of a fiat deposit that failed to convert and was refunded to the sender.
      sig { returns(Privy::DepositFailedData) }
      attr_reader :data

      sig { params(data: Privy::DepositFailedData::OrHash).void }
      attr_writer :data

      sig { returns(String) }
      attr_accessor :deposit_account_id

      sig do
        returns(
          Privy::WalletDepositAccountDepositFailedWebhookEvent::DepositType::TaggedSymbol
        )
      end
      attr_accessor :deposit_type

      # The Privy API environment.
      sig { returns(Privy::Environment::TaggedSymbol) }
      attr_accessor :environment

      # Supported fiat orchestration providers.
      sig { returns(Privy::OrchestrationProvider::TaggedSymbol) }
      attr_accessor :provider

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletDepositAccountDepositFailedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :wallet_id

      # The deposit's ID in the provider's system (e.g. Bridge), when the provider
      # assigned one.
      sig { returns(T.nilable(String)) }
      attr_reader :provider_deposit_id

      sig { params(provider_deposit_id: String).void }
      attr_writer :provider_deposit_id

      sig do
        params(
          data: Privy::DepositFailedData::OrHash,
          deposit_account_id: String,
          deposit_type:
            Privy::WalletDepositAccountDepositFailedWebhookEvent::DepositType::OrSymbol,
          environment: Privy::Environment::OrSymbol,
          provider: Privy::OrchestrationProvider::OrSymbol,
          type:
            Privy::WalletDepositAccountDepositFailedWebhookEvent::Type::OrSymbol,
          wallet_id: String,
          provider_deposit_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Details of a fiat deposit that failed to convert and was refunded to the sender.
        data:,
        deposit_account_id:,
        deposit_type:,
        # The Privy API environment.
        environment:,
        # Supported fiat orchestration providers.
        provider:,
        # The type of webhook event.
        type:,
        wallet_id:,
        # The deposit's ID in the provider's system (e.g. Bridge), when the provider
        # assigned one.
        provider_deposit_id: nil
      )
      end

      sig do
        override.returns(
          {
            data: Privy::DepositFailedData,
            deposit_account_id: String,
            deposit_type:
              Privy::WalletDepositAccountDepositFailedWebhookEvent::DepositType::TaggedSymbol,
            environment: Privy::Environment::TaggedSymbol,
            provider: Privy::OrchestrationProvider::TaggedSymbol,
            type:
              Privy::WalletDepositAccountDepositFailedWebhookEvent::Type::TaggedSymbol,
            wallet_id: String,
            provider_deposit_id: String
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
              Privy::WalletDepositAccountDepositFailedWebhookEvent::DepositType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIAT =
          T.let(
            :fiat,
            Privy::WalletDepositAccountDepositFailedWebhookEvent::DepositType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletDepositAccountDepositFailedWebhookEvent::DepositType::TaggedSymbol
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
              Privy::WalletDepositAccountDepositFailedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_DEPOSIT_ACCOUNT_DEPOSIT_FAILED =
          T.let(
            :"wallet.deposit_account.deposit_failed",
            Privy::WalletDepositAccountDepositFailedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletDepositAccountDepositFailedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
