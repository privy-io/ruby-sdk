# typed: strong

module Privy
  module Models
    class DetachWalletAutomationRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::DetachWalletAutomationRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[String]) }
      attr_accessor :automation_ids

      # Request body for detaching automations from a wallet (wallet ID comes from the
      # URL).
      sig { params(automation_ids: T::Array[String]).returns(T.attached_class) }
      def self.new(automation_ids:)
      end

      sig { override.returns({ automation_ids: T::Array[String] }) }
      def to_hash
      end
    end
  end
end
