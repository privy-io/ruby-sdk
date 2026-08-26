# typed: strong

module Privy
  module Models
    class FiatDepositAccountResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FiatDepositAccountResponse, Privy::Internal::AnyHash)
        end

      # A Bridge fiat deposit account linked to a wallet.
      sig { returns(Privy::FiatDepositAccount) }
      attr_reader :fiat_deposit_account

      sig do
        params(fiat_deposit_account: Privy::FiatDepositAccount::OrHash).void
      end
      attr_writer :fiat_deposit_account

      # Response containing a single fiat deposit account.
      sig do
        params(fiat_deposit_account: Privy::FiatDepositAccount::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # A Bridge fiat deposit account linked to a wallet.
        fiat_deposit_account:
      )
      end

      sig do
        override.returns({ fiat_deposit_account: Privy::FiatDepositAccount })
      end
      def to_hash
      end
    end
  end
end
