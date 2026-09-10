# typed: strong

module Privy
  module Models
    class GetCryptoDepositAccountOrderResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::GetCryptoDepositAccountOrderResponse,
            Privy::Internal::AnyHash
          )
        end

      # Wallet action ID of the deposit sweep.
      sig { returns(String) }
      attr_accessor :id

      # Status of a wallet action.
      sig { returns(Privy::Wallets::WalletActionStatus::TaggedSymbol) }
      attr_accessor :status

      # A crypto deposit-account sweep identified by its wallet action ID. Status is the
      # wallet-action status.
      sig do
        params(
          id: String,
          status: Privy::Wallets::WalletActionStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Wallet action ID of the deposit sweep.
        id:,
        # Status of a wallet action.
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            status: Privy::Wallets::WalletActionStatus::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
