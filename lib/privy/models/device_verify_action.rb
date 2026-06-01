# frozen_string_literal: true

module Privy
  module Models
    # The action to take on the device authorization request.
    module DeviceVerifyAction
      extend Privy::Internal::Type::Enum

      APPROVE = :approve
      DENY = :deny

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
