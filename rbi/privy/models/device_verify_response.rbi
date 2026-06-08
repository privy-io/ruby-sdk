# typed: strong

module Privy
  module Models
    class DeviceVerifyResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DeviceVerifyResponse, Privy::Internal::AnyHash)
        end

      # Whether the action was processed successfully.
      sig { returns(T::Boolean) }
      attr_accessor :success

      # Response indicating the device authorization action was processed.
      sig { params(success: T::Boolean).returns(T.attached_class) }
      def self.new(
        # Whether the action was processed successfully.
        success:
      )
      end

      sig { override.returns({ success: T::Boolean }) }
      def to_hash
      end
    end
  end
end
