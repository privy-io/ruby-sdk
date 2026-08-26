# typed: strong

module Privy
  module Models
    class WalletAutomationSubmittedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAutomationSubmittedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # The ID of the wallet action created to fulfill the automation.
      sig { returns(String) }
      attr_accessor :action_id

      # The ID of the automation that fired.
      sig { returns(String) }
      attr_accessor :automation_id

      # ISO 8601 timestamp of when the automation was submitted.
      sig { returns(String) }
      attr_accessor :created_at

      # Contract address of the triggering deposit's asset, or 'native-token' for the
      # native asset.
      sig { returns(String) }
      attr_accessor :trigger_asset_address

      # CAIP-2 chain identifier of the triggering deposit (e.g., 'eip155:8453').
      sig { returns(String) }
      attr_accessor :trigger_caip2

      # The ID of the automation execution that fired.
      sig { returns(String) }
      attr_accessor :trigger_id

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletAutomationSubmittedWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # The ID of the wallet the automation fired for.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Payload for the wallet_automation.submitted webhook event.
      sig do
        params(
          action_id: String,
          automation_id: String,
          created_at: String,
          trigger_asset_address: String,
          trigger_caip2: String,
          trigger_id: String,
          type: Privy::WalletAutomationSubmittedWebhookPayload::Type::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the wallet action created to fulfill the automation.
        action_id:,
        # The ID of the automation that fired.
        automation_id:,
        # ISO 8601 timestamp of when the automation was submitted.
        created_at:,
        # Contract address of the triggering deposit's asset, or 'native-token' for the
        # native asset.
        trigger_asset_address:,
        # CAIP-2 chain identifier of the triggering deposit (e.g., 'eip155:8453').
        trigger_caip2:,
        # The ID of the automation execution that fired.
        trigger_id:,
        # The type of webhook event.
        type:,
        # The ID of the wallet the automation fired for.
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            action_id: String,
            automation_id: String,
            created_at: String,
            trigger_asset_address: String,
            trigger_caip2: String,
            trigger_id: String,
            type:
              Privy::WalletAutomationSubmittedWebhookPayload::Type::TaggedSymbol,
            wallet_id: String
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
            T.all(Symbol, Privy::WalletAutomationSubmittedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_AUTOMATION_SUBMITTED =
          T.let(
            :"wallet_automation.submitted",
            Privy::WalletAutomationSubmittedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletAutomationSubmittedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
