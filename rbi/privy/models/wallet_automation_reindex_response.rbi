# typed: strong

module Privy
  module Models
    class WalletAutomationReindexResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAutomationReindexResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::WalletAutomationReindexAssetResult]) }
      attr_accessor :results

      sig { returns(String) }
      attr_accessor :wallet_id

      # Result of re-checking a wallet against its wallet automations.
      sig do
        params(
          results: T::Array[Privy::WalletAutomationReindexAssetResult::OrHash],
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(results:, wallet_id:)
      end

      sig do
        override.returns(
          {
            results: T::Array[Privy::WalletAutomationReindexAssetResult],
            wallet_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
