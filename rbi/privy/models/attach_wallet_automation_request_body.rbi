# typed: strong

module Privy
  module Models
    class AttachWalletAutomationRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::AttachWalletAutomationRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[String]) }
      attr_accessor :automation_ids

      # Per-attachment parameters for swap automations.
      sig { returns(T.nilable(Privy::SwapAttachmentParams)) }
      attr_reader :params

      sig { params(params: Privy::SwapAttachmentParams::OrHash).void }
      attr_writer :params

      # Request body for attaching automations to a wallet (wallet ID comes from the
      # URL).
      sig do
        params(
          automation_ids: T::Array[String],
          params: Privy::SwapAttachmentParams::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        automation_ids:,
        # Per-attachment parameters for swap automations.
        params: nil
      )
      end

      sig do
        override.returns(
          {
            automation_ids: T::Array[String],
            params: Privy::SwapAttachmentParams
          }
        )
      end
      def to_hash
      end
    end
  end
end
