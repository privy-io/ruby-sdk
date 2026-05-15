# frozen_string_literal: true

module Privy
  module Models
    class MoonpayOnRampSandboxConfig < Privy::Internal::Type::BaseModel
      # @!attribute use_sandbox
      #
      #   @return [Boolean, nil]
      optional :use_sandbox, Privy::Internal::Type::Boolean, api_name: :useSandbox

      # @!method initialize(use_sandbox: nil)
      #   Sandbox configuration for a Moonpay on-ramp.
      #
      #   @param use_sandbox [Boolean]
    end
  end
end
