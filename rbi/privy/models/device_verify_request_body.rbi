# typed: strong

module Privy
  module Models
    class DeviceVerifyRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DeviceVerifyRequestBody, Privy::Internal::AnyHash)
        end

      # The action to take on the device authorization request.
      sig { returns(Privy::DeviceVerifyAction::OrSymbol) }
      attr_accessor :action

      # The user code displayed on the CLI device.
      sig { returns(String) }
      attr_accessor :user_code

      # Request body for approving or denying a device authorization request. The user
      # must be authenticated and belong to the target app.
      sig do
        params(
          action: Privy::DeviceVerifyAction::OrSymbol,
          user_code: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The action to take on the device authorization request.
        action:,
        # The user code displayed on the CLI device.
        user_code:
      )
      end

      sig do
        override.returns(
          { action: Privy::DeviceVerifyAction::OrSymbol, user_code: String }
        )
      end
      def to_hash
      end
    end
  end
end
