# typed: strong

module Privy
  module Models
    class MoonpayOnRampSandboxConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MoonpayOnRampSandboxConfig, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :use_sandbox

      sig { params(use_sandbox: T::Boolean).void }
      attr_writer :use_sandbox

      # Sandbox configuration for a Moonpay on-ramp.
      sig { params(use_sandbox: T::Boolean).returns(T.attached_class) }
      def self.new(use_sandbox: nil)
      end

      sig { override.returns({ use_sandbox: T::Boolean }) }
      def to_hash
      end
    end
  end
end
