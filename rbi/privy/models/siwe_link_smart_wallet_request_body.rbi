# typed: strong

module Privy
  module Models
    class SiweLinkSmartWalletRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SiweLinkSmartWalletRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :message

      sig { returns(String) }
      attr_accessor :signature

      # The supported smart wallet providers.
      sig { returns(Privy::SmartWalletType::OrSymbol) }
      attr_accessor :smart_wallet_type

      sig { returns(T.nilable(String)) }
      attr_reader :smart_wallet_version

      sig { params(smart_wallet_version: String).void }
      attr_writer :smart_wallet_version

      # The request body for linking a SIWE ceremony to a smart wallet.
      sig do
        params(
          message: String,
          signature: String,
          smart_wallet_type: Privy::SmartWalletType::OrSymbol,
          smart_wallet_version: String
        ).returns(T.attached_class)
      end
      def self.new(
        message:,
        signature:,
        # The supported smart wallet providers.
        smart_wallet_type:,
        smart_wallet_version: nil
      )
      end

      sig do
        override.returns(
          {
            message: String,
            signature: String,
            smart_wallet_type: Privy::SmartWalletType::OrSymbol,
            smart_wallet_version: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
