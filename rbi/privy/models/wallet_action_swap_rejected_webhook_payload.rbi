# typed: strong

module Privy
  module Models
    class WalletActionSwapRejectedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionSwapRejectedWebhookPayload,
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

      # ISO 8601 timestamp of when the wallet action was rejected.
      sig { returns(String) }
      attr_accessor :rejected_at

      # The status of the wallet action.
      sig do
        returns(
          Privy::WalletActionSwapRejectedWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The steps of the wallet action at the time of rejection.
      sig { returns(T::Array[Privy::WalletActionStep::Variants]) }
      attr_accessor :steps

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletActionSwapRejectedWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :wallet_action_id

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Payload for the wallet_action.swap.rejected webhook event.
      sig do
        params(
          action_type: Privy::WalletActionType::OrSymbol,
          caip2: String,
          created_at: String,
          failure_reason: Privy::FailureReason::OrHash,
          input_amount: T.nilable(String),
          input_token: String,
          output_token: String,
          rejected_at: String,
          status:
            Privy::WalletActionSwapRejectedWebhookPayload::Status::OrSymbol,
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
          type: Privy::WalletActionSwapRejectedWebhookPayload::Type::OrSymbol,
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
        # A description of why a wallet action (or a step within a wallet action) failed.
        failure_reason:,
        # Amount of input token in base units. Populated after onchain confirmation.
        input_amount:,
        # Token address being sold.
        input_token:,
        # Token address being bought.
        output_token:,
        # ISO 8601 timestamp of when the wallet action was rejected.
        rejected_at:,
        # The status of the wallet action.
        status:,
        # The steps of the wallet action at the time of rejection.
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
            failure_reason: Privy::FailureReason,
            input_amount: T.nilable(String),
            input_token: String,
            output_token: String,
            rejected_at: String,
            status:
              Privy::WalletActionSwapRejectedWebhookPayload::Status::TaggedSymbol,
            steps: T::Array[Privy::WalletActionStep::Variants],
            type:
              Privy::WalletActionSwapRejectedWebhookPayload::Type::TaggedSymbol,
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
            T.all(Symbol, Privy::WalletActionSwapRejectedWebhookPayload::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REJECTED =
          T.let(
            :rejected,
            Privy::WalletActionSwapRejectedWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionSwapRejectedWebhookPayload::Status::TaggedSymbol
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
            T.all(Symbol, Privy::WalletActionSwapRejectedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_SWAP_REJECTED =
          T.let(
            :"wallet_action.swap.rejected",
            Privy::WalletActionSwapRejectedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionSwapRejectedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
