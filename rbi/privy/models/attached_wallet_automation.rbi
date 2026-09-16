# typed: strong

module Privy
  module Models
    class AttachedWalletAutomation < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AttachedWalletAutomation, Privy::Internal::AnyHash)
        end

      # ID of the automation.
      sig { returns(String) }
      attr_accessor :id

      # Whether this attachment is currently active — true only if both the attachment
      # and the underlying automation are enabled.
      sig { returns(T::Boolean) }
      attr_accessor :enabled

      # A summary of an automation attached to a wallet.
      sig { params(id: String, enabled: T::Boolean).returns(T.attached_class) }
      def self.new(
        # ID of the automation.
        id:,
        # Whether this attachment is currently active — true only if both the attachment
        # and the underlying automation are enabled.
        enabled:
      )
      end

      sig { override.returns({ id: String, enabled: T::Boolean }) }
      def to_hash
      end
    end
  end
end
