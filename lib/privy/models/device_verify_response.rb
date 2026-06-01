# frozen_string_literal: true

module Privy
  module Models
    class DeviceVerifyResponse < Privy::Internal::Type::BaseModel
      # @!attribute success
      #   Whether the action was processed successfully.
      #
      #   @return [Boolean]
      required :success, Privy::Internal::Type::Boolean

      # @!method initialize(success:)
      #   Response indicating the device authorization action was processed.
      #
      #   @param success [Boolean] Whether the action was processed successfully.
    end
  end
end
