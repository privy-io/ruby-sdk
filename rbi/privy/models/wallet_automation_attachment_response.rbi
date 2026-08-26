# typed: strong

module Privy
  module Models
    class WalletAutomationAttachmentResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAutomationAttachmentResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :automation_id

      sig { returns(String) }
      attr_accessor :created_at

      # Per-attachment parameters for swap automations.
      sig { returns(T.nilable(Privy::SwapAttachmentParams)) }
      attr_reader :params

      sig do
        params(params: T.nilable(Privy::SwapAttachmentParams::OrHash)).void
      end
      attr_writer :params

      # Automation lifecycle state: 'enabled' = running, 'disabled' = not running.
      sig { returns(Privy::WalletAutomationStatus::OrSymbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :updated_at

      sig { returns(String) }
      attr_accessor :wallet_id

      # A wallet automation attachment linking an automation to a specific wallet.
      sig do
        params(
          id: String,
          automation_id: String,
          created_at: String,
          params: T.nilable(Privy::SwapAttachmentParams::OrHash),
          status: Privy::WalletAutomationStatus::OrSymbol,
          updated_at: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        automation_id:,
        created_at:,
        # Per-attachment parameters for swap automations.
        params:,
        # Automation lifecycle state: 'enabled' = running, 'disabled' = not running.
        status:,
        updated_at:,
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            automation_id: String,
            created_at: String,
            params: T.nilable(Privy::SwapAttachmentParams),
            status: Privy::WalletAutomationStatus::OrSymbol,
            updated_at: String,
            wallet_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
