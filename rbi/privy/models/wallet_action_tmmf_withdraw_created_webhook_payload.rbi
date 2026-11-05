# typed: strong

module Privy
  module Models
    class WalletActionTmmfWithdrawCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionTmmfWithdrawCreatedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Type of wallet action
      sig { returns(Privy::Wallets::WalletActionType::Variants) }
      attr_accessor :action_type

      # ISO 8601 timestamp of when the wallet action was created.
      sig { returns(String) }
      attr_accessor :created_at

      # The ID of this event, stable across repeat deliveries so clients can deduplicate
      # on it.
      sig { returns(String) }
      attr_accessor :event_id

      # The status of the wallet action.
      sig do
        returns(
          Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :wallet_action_id

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Developer-provided reference ID, if one was included in the request.
      sig { returns(T.nilable(String)) }
      attr_accessor :reference_id

      # Payload for the wallet_action.tmmf_withdraw.created webhook event.
      sig do
        params(
          action_type:
            T.any(Privy::Wallets::WalletActionType::OrSymbol, String),
          created_at: String,
          event_id: String,
          status:
            Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Status::OrSymbol,
          type:
            Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Type::OrSymbol,
          wallet_action_id: String,
          wallet_id: String,
          reference_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Type of wallet action
        action_type:,
        # ISO 8601 timestamp of when the wallet action was created.
        created_at:,
        # The ID of this event, stable across repeat deliveries so clients can deduplicate
        # on it.
        event_id:,
        # The status of the wallet action.
        status:,
        # The type of webhook event.
        type:,
        # The ID of the wallet action.
        wallet_action_id:,
        # The ID of the wallet involved in the action.
        wallet_id:,
        # Developer-provided reference ID, if one was included in the request.
        reference_id: nil
      )
      end

      sig do
        override.returns(
          {
            action_type: Privy::Wallets::WalletActionType::Variants,
            created_at: String,
            event_id: String,
            status:
              Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Status::TaggedSymbol,
            type:
              Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Type::TaggedSymbol,
            wallet_action_id: String,
            wallet_id: String,
            reference_id: T.nilable(String)
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
            T.all(
              Symbol,
              Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Status::TaggedSymbol
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
              Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_TMMF_WITHDRAW_CREATED =
          T.let(
            :"wallet_action.tmmf_withdraw.created",
            Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
