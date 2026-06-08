# frozen_string_literal: true

require_relative "../test_helper"

class Privy::Test::Resources::WalletsTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.create(chain_type: :ethereum)

    assert_pattern do
      response => Privy::Wallet
    end

    assert_pattern do
      response => {
        id: String,
        additional_signers: ^(Privy::Internal::Type::ArrayOf[Privy::WalletAdditionalSignerItem]),
        address: String,
        chain_type: Privy::WalletChainType,
        created_at: Float,
        exported_at: Float | nil,
        imported_at: Float | nil,
        owner_id: String | nil,
        policy_ids: ^(Privy::Internal::Type::ArrayOf[String]),
        authorization_threshold: Float | nil,
        custody: Privy::WalletCustodian | nil,
        display_name: String | nil,
        external_id: String | nil,
        public_key: String | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.update("wallet_id")

    assert_pattern do
      response => Privy::Wallet
    end

    assert_pattern do
      response => {
        id: String,
        additional_signers: ^(Privy::Internal::Type::ArrayOf[Privy::WalletAdditionalSignerItem]),
        address: String,
        chain_type: Privy::WalletChainType,
        created_at: Float,
        exported_at: Float | nil,
        imported_at: Float | nil,
        owner_id: String | nil,
        policy_ids: ^(Privy::Internal::Type::ArrayOf[String]),
        authorization_threshold: Float | nil,
        custody: Privy::WalletCustodian | nil,
        display_name: String | nil,
        external_id: String | nil,
        public_key: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.list

    assert_pattern do
      response => Privy::Internal::Cursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Privy::Wallet
    end

    assert_pattern do
      row => {
        id: String,
        additional_signers: ^(Privy::Internal::Type::ArrayOf[Privy::WalletAdditionalSignerItem]),
        address: String,
        chain_type: Privy::WalletChainType,
        created_at: Float,
        exported_at: Float | nil,
        imported_at: Float | nil,
        owner_id: String | nil,
        policy_ids: ^(Privy::Internal::Type::ArrayOf[String]),
        authorization_threshold: Float | nil,
        custody: Privy::WalletCustodian | nil,
        display_name: String | nil,
        external_id: String | nil,
        public_key: String | nil
      }
    end
  end

  def test__init_import_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets._init_import(
        body: {
          address: "0xF1DBff66C993EE895C8cb176c30b07A559d76496",
          chain_type: :ethereum,
          encryption_type: :HPKE,
          entropy_type: :"private-key"
        }
      )

    assert_pattern do
      response => Privy::Models::WalletInitImportResponse
    end

    assert_pattern do
      response => {
        encryption_public_key: String,
        encryption_type: Privy::HpkeEncryption
      }
    end
  end

  def test__submit_import_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets._submit_import(
        wallet: {
          address: "0xF1DBff66C993EE895C8cb176c30b07A559d76496",
          chain_type: :ethereum,
          ciphertext: "PRoRXygG+YYSDBXjCopNYZmx8Z6nvdl1D0lpePTYZdZI2VGfK+LkFt+GlEJqdoi9",
          encapsulated_key: "BOhR6xITDt5THJawHHJKrKdI9CBr2M/SDWzZZAaOW4gCMsSpC65U007WyKiwuuOVAo1BNm4YgcBBROuMmyIZXZk=",
          encryption_type: :HPKE,
          entropy_type: :"private-key"
        }
      )

    assert_pattern do
      response => Privy::Wallet
    end

    assert_pattern do
      response => {
        id: String,
        additional_signers: ^(Privy::Internal::Type::ArrayOf[Privy::WalletAdditionalSignerItem]),
        address: String,
        chain_type: Privy::WalletChainType,
        created_at: Float,
        exported_at: Float | nil,
        imported_at: Float | nil,
        owner_id: String | nil,
        policy_ids: ^(Privy::Internal::Type::ArrayOf[String]),
        authorization_threshold: Float | nil,
        custody: Privy::WalletCustodian | nil,
        display_name: String | nil,
        external_id: String | nil,
        public_key: String | nil
      }
    end
  end

  def test__transfer_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets._transfer(
        "wallet_id",
        destination: {address: "0xB00F0759DbeeF5E543Cc3E3B07A6442F5f3928a2"},
        source: {amount: "10.5", asset: "usdc", chain: "base"}
      )

    assert_pattern do
      response => Privy::TransferActionResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        destination_address: String,
        destination_amount: String | nil,
        source_chain: String,
        status: Privy::WalletActionStatus,
        type: Privy::TransferActionResponse::Type,
        wallet_id: String,
        destination_asset: String | nil,
        destination_chain: String | nil,
        estimated_fees: ^(Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem]) | nil,
        estimated_gas: Privy::TransferActionResponse::EstimatedGas | nil,
        failure_reason: Privy::FailureReason | nil,
        fees: ^(Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem]) | nil,
        gas: Privy::TransferActionResponse::Gas | nil,
        source_amount: String | nil,
        source_asset: String | nil,
        source_asset_address: String | nil,
        source_asset_decimals: Integer | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep]) | nil
      }
    end
  end

  def test_authenticate_with_jwt_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.authenticate_with_jwt(
        encryption_type: :HPKE,
        recipient_public_key: "DAQcDQgAEx4aoeD72yykviK+fckqE2CItVIGn1rCnvCXZ1HgpOcMEMialRmTrqIK4oZlYd1",
        user_jwt: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWUsImlhdCI6MTUxNjIzOTAyMn0.KMUFsIDTnFmyG3nMiGM6H9FNFUROf3wh7SmqJp-QV30"
      )

    assert_pattern do
      response => Privy::WalletAuthenticateWithJwtResponse
    end

    assert_pattern do
      case response
      in Privy::WalletAuthenticateWithJwtResponse::WithEncryption
      in Privy::WalletAuthenticateWithJwtResponse::WithoutEncryption
      end
    end
  end

  def test_create_batch_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.create_batch(wallets: [{chain_type: :ethereum}, {chain_type: :solana}])

    assert_pattern do
      response => Privy::WalletBatchCreateResponse
    end

    assert_pattern do
      response => {
        results: ^(Privy::Internal::Type::ArrayOf[union: Privy::WalletBatchCreateResult])
      }
    end
  end

  def test_create_wallets_with_recovery_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.create_wallets_with_recovery(
        primary_signer: {subject_id: "cm7oxq1el000e11o8iwp7d0d0"},
        recovery_user: {linked_accounts: [{address: "john@doe.com", type: :email}]},
        wallets: [{chain_type: :ethereum}, {chain_type: :solana}]
      )

    assert_pattern do
      response => Privy::WalletCreateWalletsWithRecoveryResponse
    end

    assert_pattern do
      response => {
        recovery_user_id: String,
        wallets: ^(Privy::Internal::Type::ArrayOf[Privy::Wallet])
      }
    end
  end

  def test_export_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.export(
        "wallet_id",
        encryption_type: :HPKE,
        recipient_public_key: "BDAZLOIdTaPycEYkgG0MvCzbIKJLli/yWkAV5yCa9yOsZ4JsrLweA5MnP8YIiY4k/RRzC+APhhO+P+Hoz/rt7Go="
      )

    assert_pattern do
      response => Privy::WalletExportResponseBody
    end

    assert_pattern do
      response => {
        ciphertext: String,
        encapsulated_key: String,
        encryption_type: Privy::HpkeEncryption
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.get("wallet_id")

    assert_pattern do
      response => Privy::Wallet
    end

    assert_pattern do
      response => {
        id: String,
        additional_signers: ^(Privy::Internal::Type::ArrayOf[Privy::WalletAdditionalSignerItem]),
        address: String,
        chain_type: Privy::WalletChainType,
        created_at: Float,
        exported_at: Float | nil,
        imported_at: Float | nil,
        owner_id: String | nil,
        policy_ids: ^(Privy::Internal::Type::ArrayOf[String]),
        authorization_threshold: Float | nil,
        custody: Privy::WalletCustodian | nil,
        display_name: String | nil,
        external_id: String | nil,
        public_key: String | nil
      }
    end
  end

  def test_get_wallet_by_address_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.get_wallet_by_address(address: "0xF1DBff66C993EE895C8cb176c30b07A559d76496")

    assert_pattern do
      response => Privy::Wallet
    end

    assert_pattern do
      response => {
        id: String,
        additional_signers: ^(Privy::Internal::Type::ArrayOf[Privy::WalletAdditionalSignerItem]),
        address: String,
        chain_type: Privy::WalletChainType,
        created_at: Float,
        exported_at: Float | nil,
        imported_at: Float | nil,
        owner_id: String | nil,
        policy_ids: ^(Privy::Internal::Type::ArrayOf[String]),
        authorization_threshold: Float | nil,
        custody: Privy::WalletCustodian | nil,
        display_name: String | nil,
        external_id: String | nil,
        public_key: String | nil
      }
    end
  end

  def test_raw_sign_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.raw_sign(
        "wallet_id",
        params: {
          bytes: "0a0234ea220809701d7a17a77e04408093e981a6335a66080112620a2d747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e5472616e73666572436f6e747261637412310a15417009bf59e27d2031a23a61e1590289fc3d21b3cd121541132b98ed6fb80a2d45f177cdef091ae2d9dc115418e80770a0bee581a633",
          encoding: :hex,
          hash_function: :sha256
        }
      )

    assert_pattern do
      response => Privy::RawSignResponse
    end

    assert_pattern do
      response => {
        data: Privy::RawSignResponseData,
        method_: Privy::RawSignResponse::Method
      }
    end
  end

  def test_rpc_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.rpc(
        "wallet_id",
        wallet_rpc_request_body: {
          caip2: "eip155:8453",
          method: :eth_sendTransaction,
          params: {transaction: {}}
        }
      )

    assert_pattern do
      response => Privy::WalletRpcResponse
    end

    assert_pattern do
      case response
      in Privy::EthereumPersonalSignRpcResponse
      in Privy::EthereumSignTypedDataRpcResponse
      in Privy::EthereumSignTransactionRpcResponse
      in Privy::EthereumSendTransactionRpcResponse
      in Privy::EthereumSignUserOperationRpcResponse
      in Privy::EthereumSign7702AuthorizationRpcResponse
      in Privy::EthereumSecp256k1SignRpcResponse
      in Privy::EthereumSendCallsRpcResponse
      in Privy::SolanaSignMessageRpcResponse
      in Privy::SolanaSignTransactionRpcResponse
      in Privy::SolanaSignAndSendTransactionRpcResponse
      in Privy::SparkTransferRpcResponse
      in Privy::SparkGetBalanceRpcResponse
      in Privy::SparkTransferTokensRpcResponse
      in Privy::SparkGetStaticDepositAddressRpcResponse
      in Privy::SparkGetClaimStaticDepositQuoteRpcResponse
      in Privy::SparkClaimStaticDepositRpcResponse
      in Privy::SparkCreateLightningInvoiceRpcResponse
      in Privy::SparkPayLightningInvoiceRpcResponse
      in Privy::SparkSignMessageWithIdentityKeyRpcResponse
      in Privy::ExportPrivateKeyRpcResponse
      in Privy::ExportSeedPhraseRpcResponse
      end
    end

    assert_pattern do
      case response
      in {method_: :personal_sign, data: Privy::EthereumPersonalSignRpcResponseData}
      in {method_: :eth_signTypedData_v4, data: Privy::EthereumSignTypedDataRpcResponseData}
      in {method_: :eth_signTransaction, data: Privy::EthereumSignTransactionRpcResponseData}
      in {method_: :eth_sendTransaction, data: Privy::EthereumSendTransactionRpcResponseData}
      in {method_: :eth_signUserOperation, data: Privy::EthereumSignUserOperationRpcResponseData}
      in {method_: :eth_sign7702Authorization, data: Privy::EthereumSign7702AuthorizationRpcResponseData}
      in {method_: :secp256k1_sign, data: Privy::EthereumSecp256k1SignRpcResponseData}
      in {method_: :wallet_sendCalls, data: Privy::EthereumSendCallsRpcResponseData}
      in {method_: :signMessage, data: Privy::SolanaSignMessageRpcResponseData}
      in {method_: :signTransaction, data: Privy::SolanaSignTransactionRpcResponseData}
      in {method_: :signAndSendTransaction, data: Privy::SolanaSignAndSendTransactionRpcResponseData}
      in {method_: :transfer, data: Privy::SparkTransfer | nil}
      in {method_: :getBalance, data: Privy::SparkBalance | nil}
      in {method_: :transferTokens, data: Privy::SparkTransferTokensRpcResponseData | nil}
      in {method_: :getStaticDepositAddress, data: Privy::SparkGetStaticDepositAddressRpcResponseData | nil}
      in {method_: :getClaimStaticDepositQuote, data: Privy::SparkGetClaimStaticDepositQuoteRpcResponseData | nil}
      in {method_: :claimStaticDeposit, data: Privy::SparkClaimStaticDepositRpcResponseData | nil}
      in {method_: :createLightningInvoice, data: Privy::SparkLightningReceiveRequest | nil}
      in {method_: :payLightningInvoice, data: Privy::SparkPayLightningInvoiceRpcResponse::Data | nil}
      in {method_: :signMessageWithIdentityKey, data: Privy::SparkSignMessageWithIdentityKeyRpcResponseData | nil}
      in {method_: :exportPrivateKey, data: Privy::PrivateKeyExportInput}
      in {method_: :exportSeedPhrase, data: Privy::SeedPhraseExportResponse}
      end
    end
  end
end
