# typed: strong

module Privy
  module Models
    class WalletAutomationAttachmentListResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAutomationAttachmentListResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::WalletAutomationAttachmentResponse]) }
      attr_accessor :data

      # List of wallet automation attachments.
      sig do
        params(
          data: T::Array[Privy::WalletAutomationAttachmentResponse::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: T::Array[Privy::WalletAutomationAttachmentResponse] }
        )
      end
      def to_hash
      end
    end
  end
end
