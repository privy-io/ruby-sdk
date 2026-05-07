# typed: strong

module Privy
  module Models
    # Method the rule applies to.
    module PolicyMethod
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::PolicyMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETH_SEND_TRANSACTION =
        T.let(:eth_sendTransaction, Privy::PolicyMethod::TaggedSymbol)
      ETH_SIGN_TRANSACTION =
        T.let(:eth_signTransaction, Privy::PolicyMethod::TaggedSymbol)
      ETH_SIGN_USER_OPERATION =
        T.let(:eth_signUserOperation, Privy::PolicyMethod::TaggedSymbol)
      ETH_SIGN_TYPED_DATA_V4 =
        T.let(:eth_signTypedData_v4, Privy::PolicyMethod::TaggedSymbol)
      ETH_SIGN7702_AUTHORIZATION =
        T.let(:eth_sign7702Authorization, Privy::PolicyMethod::TaggedSymbol)
      WALLET_SEND_CALLS =
        T.let(:wallet_sendCalls, Privy::PolicyMethod::TaggedSymbol)
      SIGN_TRANSACTION =
        T.let(:signTransaction, Privy::PolicyMethod::TaggedSymbol)
      SIGN_AND_SEND_TRANSACTION =
        T.let(:signAndSendTransaction, Privy::PolicyMethod::TaggedSymbol)
      EXPORT_PRIVATE_KEY =
        T.let(:exportPrivateKey, Privy::PolicyMethod::TaggedSymbol)
      EXPORT_SEED_PHRASE =
        T.let(:exportSeedPhrase, Privy::PolicyMethod::TaggedSymbol)
      SIGN_TRANSACTION_BYTES =
        T.let(:signTransactionBytes, Privy::PolicyMethod::TaggedSymbol)
      EARN_DEPOSIT = T.let(:earn_deposit, Privy::PolicyMethod::TaggedSymbol)
      EARN_WITHDRAW = T.let(:earn_withdraw, Privy::PolicyMethod::TaggedSymbol)
      TRANSFER = T.let(:transfer, Privy::PolicyMethod::TaggedSymbol)
      STAR = T.let(:"*", Privy::PolicyMethod::TaggedSymbol)

      sig { override.returns(T::Array[Privy::PolicyMethod::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
