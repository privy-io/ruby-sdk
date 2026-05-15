# typed: strong

module Privy
  module Models
    class CreateAccountFromWalletIDsInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateAccountFromWalletIDsInput,
            Privy::Internal::AnyHash
          )
        end

      # IDs for wallets to include in this account.
      sig { returns(T::Array[String]) }
      attr_accessor :wallet_ids

      # An optional display name for the account.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # Input for creating a digital asset account from existing wallets with a
      # `wallet_ids` parameter.
      sig do
        params(wallet_ids: T::Array[String], display_name: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # IDs for wallets to include in this account.
        wallet_ids:,
        # An optional display name for the account.
        display_name: nil
      )
      end

      sig do
        override.returns({ wallet_ids: T::Array[String], display_name: String })
      end
      def to_hash
      end
    end
  end
end
