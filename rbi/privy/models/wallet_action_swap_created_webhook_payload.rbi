# typed: strong

module Privy
  module Models
    class WalletActionSwapCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionSwapCreatedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Type of wallet action
      sig { returns(Privy::WalletActionType::TaggedSymbol) }
      attr_accessor :action_type

      # Chain identifier.
      sig { returns(String) }
      attr_accessor :caip2

      # Amount of input token in base units. Populated after on-chain confirmation.
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
          Privy::WalletActionSwapCreatedWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletActionSwapCreatedWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :wallet_action_id

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Payload for the wallet_action.swap.created webhook event.
      sig do
        params(
          action_type: Privy::WalletActionType::OrSymbol,
          caip2: String,
          input_amount: T.nilable(String),
          input_token: String,
          output_token: String,
          status:
            Privy::WalletActionSwapCreatedWebhookPayload::Status::OrSymbol,
          type: Privy::WalletActionSwapCreatedWebhookPayload::Type::OrSymbol,
          wallet_action_id: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Type of wallet action
        action_type:,
        # Chain identifier.
        caip2:,
        # Amount of input token in base units. Populated after on-chain confirmation.
        input_amount:,
        # Token address being sold.
        input_token:,
        # Token address being bought.
        output_token:,
        # The status of the wallet action.
        status:,
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
            input_amount: T.nilable(String),
            input_token: String,
            output_token: String,
            status:
              Privy::WalletActionSwapCreatedWebhookPayload::Status::TaggedSymbol,
            type:
              Privy::WalletActionSwapCreatedWebhookPayload::Type::TaggedSymbol,
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
            T.all(Symbol, Privy::WalletActionSwapCreatedWebhookPayload::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Privy::WalletActionSwapCreatedWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionSwapCreatedWebhookPayload::Status::TaggedSymbol
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
            T.all(Symbol, Privy::WalletActionSwapCreatedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_SWAP_CREATED =
          T.let(
            :"wallet_action.swap.created",
            Privy::WalletActionSwapCreatedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionSwapCreatedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
