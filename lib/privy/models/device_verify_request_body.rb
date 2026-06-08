# frozen_string_literal: true

module Privy
  module Models
    class DeviceVerifyRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute action
      #   The action to take on the device authorization request.
      #
      #   @return [Symbol, Privy::Models::DeviceVerifyAction]
      required :action, enum: -> { Privy::DeviceVerifyAction }

      # @!attribute user_code
      #   The user code displayed on the CLI device.
      #
      #   @return [String]
      required :user_code, String

      # @!method initialize(action:, user_code:)
      #   Request body for approving or denying a device authorization request. The user
      #   must be authenticated and belong to the target app.
      #
      #   @param action [Symbol, Privy::Models::DeviceVerifyAction] The action to take on the device authorization request.
      #
      #   @param user_code [String] The user code displayed on the CLI device.
    end
  end
end
