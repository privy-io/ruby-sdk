# typed: strong

module Privy
  module Models
    class WalletDepositAccountDepositCompletedWebhookEvent < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletDepositAccountDepositCompletedWebhookEvent,
            Privy::Internal::AnyHash
          )
        end

      # Details of a fiat deposit that has finished converting and been delivered to the
      # wallet.
      sig { returns(Privy::DepositCompletedData) }
      attr_reader :data

      sig { params(data: Privy::DepositCompletedData::OrHash).void }
      attr_writer :data

      sig { returns(String) }
      attr_accessor :deposit_account_id

      sig do
        returns(
          Privy::WalletDepositAccountDepositCompletedWebhookEvent::DepositType::TaggedSymbol
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
          Privy::WalletDepositAccountDepositCompletedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :wallet_id

      sig do
        params(
          data: Privy::DepositCompletedData::OrHash,
          deposit_account_id: String,
          deposit_type:
            Privy::WalletDepositAccountDepositCompletedWebhookEvent::DepositType::OrSymbol,
          environment: Privy::Environment::OrSymbol,
          provider: Privy::OrchestrationProvider::OrSymbol,
          provider_deposit_id: String,
          type:
            Privy::WalletDepositAccountDepositCompletedWebhookEvent::Type::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Details of a fiat deposit that has finished converting and been delivered to the
        # wallet.
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
            data: Privy::DepositCompletedData,
            deposit_account_id: String,
            deposit_type:
              Privy::WalletDepositAccountDepositCompletedWebhookEvent::DepositType::TaggedSymbol,
            environment: Privy::Environment::TaggedSymbol,
            provider: Privy::OrchestrationProvider::TaggedSymbol,
            provider_deposit_id: String,
            type:
              Privy::WalletDepositAccountDepositCompletedWebhookEvent::Type::TaggedSymbol,
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
              Privy::WalletDepositAccountDepositCompletedWebhookEvent::DepositType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIAT =
          T.let(
            :fiat,
            Privy::WalletDepositAccountDepositCompletedWebhookEvent::DepositType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletDepositAccountDepositCompletedWebhookEvent::DepositType::TaggedSymbol
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
              Privy::WalletDepositAccountDepositCompletedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_DEPOSIT_ACCOUNT_DEPOSIT_COMPLETED =
          T.let(
            :"wallet.deposit_account.deposit_completed",
            Privy::WalletDepositAccountDepositCompletedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletDepositAccountDepositCompletedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
