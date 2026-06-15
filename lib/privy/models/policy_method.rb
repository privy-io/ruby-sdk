# frozen_string_literal: true

module Privy
  module Models
    # Method the rule applies to.
    module PolicyMethod
      extend Privy::Internal::Type::Enum

      ETH_SEND_TRANSACTION = :eth_sendTransaction
      ETH_SIGN_TRANSACTION = :eth_signTransaction
      ETH_SIGN_USER_OPERATION = :eth_signUserOperation
      ETH_SIGN_TYPED_DATA_V4 = :eth_signTypedData_v4
      PERSONAL_SIGN = :personal_sign
      ETH_SIGN7702_AUTHORIZATION = :eth_sign7702Authorization
      WALLET_SEND_CALLS = :wallet_sendCalls
      SIGN_TRANSACTION = :signTransaction
      SIGN_AND_SEND_TRANSACTION = :signAndSendTransaction
      EXPORT_PRIVATE_KEY = :exportPrivateKey
      EXPORT_SEED_PHRASE = :exportSeedPhrase
      SIGN_TRANSACTION_BYTES = :signTransactionBytes
      RAW_SIGN = :raw_sign
      EARN_DEPOSIT = :earn_deposit
      EARN_WITHDRAW = :earn_withdraw
      TRANSFER = :transfer
      STAR = :*

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
