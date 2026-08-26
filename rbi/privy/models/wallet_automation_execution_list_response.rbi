# typed: strong

module Privy
  module Models
    class WalletAutomationExecutionListResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAutomationExecutionListResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::WalletAutomationExecutionResponse]) }
      attr_accessor :data

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # Paginated list of wallet automation executions.
      sig do
        params(
          data: T::Array[Privy::WalletAutomationExecutionResponse::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(data:, next_cursor:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Privy::WalletAutomationExecutionResponse],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
