# typed: strong

module Privy
  module Models
    class WalletAutomationSuccessResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAutomationSuccessResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::WalletAutomationSuccessResponse::Success::OrBoolean)
      end
      attr_accessor :success

      # Confirmation of a successful automation operation.
      sig do
        params(
          success: Privy::WalletAutomationSuccessResponse::Success::OrBoolean
        ).returns(T.attached_class)
      end
      def self.new(success:)
      end

      sig do
        override.returns(
          {
            success: Privy::WalletAutomationSuccessResponse::Success::OrBoolean
          }
        )
      end
      def to_hash
      end

      module Success
        extend Privy::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(T::Boolean, Privy::WalletAutomationSuccessResponse::Success)
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Privy::WalletAutomationSuccessResponse::Success::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletAutomationSuccessResponse::Success::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
