# typed: strong

module Privy
  module Models
    class WalletActionSwapFailedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionSwapFailedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Type of wallet action
      sig { returns(Privy::WalletActionType::TaggedSymbol) }
      attr_accessor :action_type

      # Chain identifier.
      sig { returns(String) }
      attr_accessor :caip2

      # ISO 8601 timestamp of when the wallet action was created.
      sig { returns(String) }
      attr_accessor :created_at

      # ISO 8601 timestamp of when the wallet action failed.
      sig { returns(String) }
      attr_accessor :failed_at

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(Privy::FailureReason) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # Amount of input token in base units. Populated after onchain confirmation.
      sig { returns(T.nilable(String)) }
      attr_accessor :input_amount

      # Token address being sold.
      sig { returns(String) }
      attr_accessor :input_token

      # Token address being bought.
      sig { returns(String) }
      attr_accessor :output_token

      # The status of the wallet action.
      sig do
        returns(
          Privy::WalletActionSwapFailedWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The steps of the wallet action. Completed steps will have transaction hashes;
      # the failing step will have a failure_reason.
      sig { returns(T::Array[Privy::WalletActionStep::Variants]) }
      attr_accessor :steps

      # The type of webhook event.
      sig do
        returns(Privy::WalletActionSwapFailedWebhookPayload::Type::TaggedSymbol)
      end
      attr_accessor :type

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :wallet_action_id

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Payload for the wallet_action.swap.failed webhook event.
      sig do
        params(
          action_type: Privy::WalletActionType::OrSymbol,
          caip2: String,
          created_at: String,
          failed_at: String,
          failure_reason: Privy::FailureReason::OrHash,
          input_amount: T.nilable(String),
          input_token: String,
          output_token: String,
          status: Privy::WalletActionSwapFailedWebhookPayload::Status::OrSymbol,
          steps:
            T::Array[
              T.any(
                Privy::EvmTransactionWalletActionStep::OrHash,
                Privy::EvmUserOperationWalletActionStep::OrHash,
                Privy::SvmTransactionWalletActionStep::OrHash,
                Privy::ExternalTransactionWalletActionStep::OrHash,
                Privy::CustodianTransactionWalletActionStep::OrHash
              )
            ],
          type: Privy::WalletActionSwapFailedWebhookPayload::Type::OrSymbol,
          wallet_action_id: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Type of wallet action
        action_type:,
        # Chain identifier.
        caip2:,
        # ISO 8601 timestamp of when the wallet action was created.
        created_at:,
        # ISO 8601 timestamp of when the wallet action failed.
        failed_at:,
        # A description of why a wallet action (or a step within a wallet action) failed.
        failure_reason:,
        # Amount of input token in base units. Populated after onchain confirmation.
        input_amount:,
        # Token address being sold.
        input_token:,
        # Token address being bought.
        output_token:,
        # The status of the wallet action.
        status:,
        # The steps of the wallet action. Completed steps will have transaction hashes;
        # the failing step will have a failure_reason.
        steps:,
        # The type of webhook event.
        type:,
        # The ID of the wallet action.
        wallet_action_id:,
        # The ID of the wallet involved in the action.
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            action_type: Privy::WalletActionType::TaggedSymbol,
            caip2: String,
            created_at: String,
            failed_at: String,
            failure_reason: Privy::FailureReason,
            input_amount: T.nilable(String),
            input_token: String,
            output_token: String,
            status:
              Privy::WalletActionSwapFailedWebhookPayload::Status::TaggedSymbol,
            steps: T::Array[Privy::WalletActionStep::Variants],
            type:
              Privy::WalletActionSwapFailedWebhookPayload::Type::TaggedSymbol,
            wallet_action_id: String,
            wallet_id: String
          }
        )
      end
      def to_hash
      end

      # The status of the wallet action.
      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::WalletActionSwapFailedWebhookPayload::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAILED =
          T.let(
            :failed,
            Privy::WalletActionSwapFailedWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionSwapFailedWebhookPayload::Status::TaggedSymbol
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
            T.all(Symbol, Privy::WalletActionSwapFailedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_SWAP_FAILED =
          T.let(
            :"wallet_action.swap.failed",
            Privy::WalletActionSwapFailedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionSwapFailedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
