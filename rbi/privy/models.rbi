# typed: strong

module Privy
  AbiParameter = Privy::Models::AbiParameter

  AbiSchema = T.let(Privy::Models::AbiSchema, Privy::Internal::Type::Converter)

  AbiSchemaItem = Privy::Models::AbiSchemaItem

  AccountBalanceParams = Privy::Models::AccountBalanceParams

  AccountBalanceResponse = Privy::Models::AccountBalanceResponse

  AccountDisplayName = Privy::Models::AccountDisplayName

  AccountResponse = Privy::Models::AccountResponse

  AccountsDashboardListResponse = Privy::Models::AccountsDashboardListResponse

  AccountsListResponse = Privy::Models::AccountsListResponse

  AccountWallet = Privy::Models::AccountWallet

  AccountWalletConfigurationItem = Privy::Models::AccountWalletConfigurationItem

  AccountWalletIDs =
    T.let(Privy::Models::AccountWalletIDs, Privy::Internal::Type::Converter)

  AccountWalletsConfiguration =
    T.let(
      Privy::Models::AccountWalletsConfiguration,
      Privy::Internal::Type::Converter
    )

  ActionRequestBodyCondition = Privy::Models::ActionRequestBodyCondition

  AdditionalSignerInput =
    T.let(
      Privy::Models::AdditionalSignerInput,
      Privy::Internal::Type::Converter
    )

  AdditionalSignerItemInput = Privy::Models::AdditionalSignerItemInput

  Address = Privy::Models::Address

  Aggregation = Privy::Models::Aggregation

  AggregationCondition = Privy::Models::AggregationCondition

  AggregationGroupBy = Privy::Models::AggregationGroupBy

  AggregationInput = Privy::Models::AggregationInput

  AggregationMethod = Privy::Models::AggregationMethod

  AggregationMetric = Privy::Models::AggregationMetric

  AggregationWindow = Privy::Models::AggregationWindow

  AlchemyPaymasterContext = Privy::Models::AlchemyPaymasterContext

  AllowlistDeletionResponse = Privy::Models::AllowlistDeletionResponse

  AllowlistEntry = Privy::Models::AllowlistEntry

  AmountType = Privy::Models::AmountType

  AnalyticsEventInput = Privy::Models::AnalyticsEventInput

  AppGetGasSpendParams = Privy::Models::AppGetGasSpendParams

  AppGetParams = Privy::Models::AppGetParams

  AppGetTestCredentialsParams = Privy::Models::AppGetTestCredentialsParams

  AppResponse = Privy::Models::AppResponse

  Apps = Privy::Models::Apps

  AssetAccountWithBalance = Privy::Models::AssetAccountWithBalance

  AuthenticatedUser = Privy::Models::AuthenticatedUser

  AuthenticateJwtInput = Privy::Models::AuthenticateJwtInput

  AuthenticateMode = Privy::Models::AuthenticateMode

  AuthenticateModeOption = Privy::Models::AuthenticateModeOption

  AuthenticateSiweInput = Privy::Models::AuthenticateSiweInput

  AuthenticateSiwsInput = Privy::Models::AuthenticateSiwsInput

  AuthorizationKeyDashboardResponse =
    Privy::Models::AuthorizationKeyDashboardResponse

  AuthorizationKeyResponse = Privy::Models::AuthorizationKeyResponse

  AuthorizationKeyRole = Privy::Models::AuthorizationKeyRole

  BalanceAsset = Privy::Models::BalanceAsset

  BalanceAssetByChain = Privy::Models::BalanceAssetByChain

  BalanceResponse = Privy::Models::BalanceResponse

  BaseActionResult = Privy::Models::BaseActionResult

  BaseIntentResponse = Privy::Models::BaseIntentResponse

  BridgeBrlFiatVirtualAccountDepositInstructions =
    Privy::Models::BridgeBrlFiatVirtualAccountDepositInstructions

  BridgeCryptoDepositMetadata = Privy::Models::BridgeCryptoDepositMetadata

  BridgeCryptoTransferMetadata = Privy::Models::BridgeCryptoTransferMetadata

  BridgeDestinationAsset = Privy::Models::BridgeDestinationAsset

  BridgeEurFiatVirtualAccountDepositInstructions =
    Privy::Models::BridgeEurFiatVirtualAccountDepositInstructions

  BridgeFiatCustomerResponse = Privy::Models::BridgeFiatCustomerResponse

  BridgeFiatDepositMetadata = Privy::Models::BridgeFiatDepositMetadata

  BridgeFiatRejectionReason = Privy::Models::BridgeFiatRejectionReason

  BridgeFiatTransferMetadata = Privy::Models::BridgeFiatTransferMetadata

  BridgeFiatVirtualAccountDepositInstructions =
    Privy::Models::BridgeFiatVirtualAccountDepositInstructions

  BridgeFiatVirtualAccountDestination =
    Privy::Models::BridgeFiatVirtualAccountDestination

  BridgeFiatVirtualAccountRequest =
    Privy::Models::BridgeFiatVirtualAccountRequest

  BridgeFiatVirtualAccountResponse =
    Privy::Models::BridgeFiatVirtualAccountResponse

  BridgeFiatVirtualAccountSource = Privy::Models::BridgeFiatVirtualAccountSource

  BridgeGbpFiatVirtualAccountDepositInstructions =
    Privy::Models::BridgeGbpFiatVirtualAccountDepositInstructions

  BridgeMetadata = Privy::Models::BridgeMetadata

  BridgeMxnFiatVirtualAccountDepositInstructions =
    Privy::Models::BridgeMxnFiatVirtualAccountDepositInstructions

  BridgeOnrampProvider = Privy::Models::BridgeOnrampProvider

  BridgeRefundMetadata = Privy::Models::BridgeRefundMetadata

  BridgeSandboxFiatCustomerResponse =
    Privy::Models::BridgeSandboxFiatCustomerResponse

  BridgeSandboxFiatVirtualAccountRequest =
    Privy::Models::BridgeSandboxFiatVirtualAccountRequest

  BridgeSandboxFiatVirtualAccountResponse =
    Privy::Models::BridgeSandboxFiatVirtualAccountResponse

  BridgeSourceAsset = Privy::Models::BridgeSourceAsset

  BridgeStaticMemoDepositMetadata =
    Privy::Models::BridgeStaticMemoDepositMetadata

  BridgeTransferRefundMetadata = Privy::Models::BridgeTransferRefundMetadata

  BridgeUsdFiatVirtualAccountDepositInstructions =
    Privy::Models::BridgeUsdFiatVirtualAccountDepositInstructions

  Caip2 = Privy::Models::Caip2

  Caip2ChainID = Privy::Models::Caip2ChainID

  CoinbaseBlockchain = Privy::Models::CoinbaseBlockchain

  CoinbaseEthereumAsset = Privy::Models::CoinbaseEthereumAsset

  CoinbaseOnRampEthereumAddress = Privy::Models::CoinbaseOnRampEthereumAddress

  CoinbaseOnRampInitEthereumInput =
    Privy::Models::CoinbaseOnRampInitEthereumInput

  CoinbaseOnRampInitInput = Privy::Models::CoinbaseOnRampInitInput

  CoinbaseOnRampInitResponse = Privy::Models::CoinbaseOnRampInitResponse

  CoinbaseOnRampInitSolanaInput = Privy::Models::CoinbaseOnRampInitSolanaInput

  CoinbaseOnRampSolanaAddress = Privy::Models::CoinbaseOnRampSolanaAddress

  CoinbaseOnRampStatus = Privy::Models::CoinbaseOnRampStatus

  CoinbaseOnRampStatusResponse = Privy::Models::CoinbaseOnRampStatusResponse

  CoinbaseSolanaAsset = Privy::Models::CoinbaseSolanaAsset

  ConditionOperator = Privy::Models::ConditionOperator

  ConditionSet = Privy::Models::ConditionSet

  ConditionSetAuthorizationHeaders =
    Privy::Models::ConditionSetAuthorizationHeaders

  ConditionSetItem = Privy::Models::ConditionSetItem

  ConditionSetItemRequestParams = Privy::Models::ConditionSetItemRequestParams

  ConditionSetItems =
    T.let(Privy::Models::ConditionSetItems, Privy::Internal::Type::Converter)

  ConditionSetItemsRequestBody =
    T.let(
      Privy::Models::ConditionSetItemsRequestBody,
      Privy::Internal::Type::Converter
    )

  ConditionSetItemsResponse = Privy::Models::ConditionSetItemsResponse

  ConditionSetItemValueInput = Privy::Models::ConditionSetItemValueInput

  ConditionSetRequestBody = Privy::Models::ConditionSetRequestBody

  ConditionSetRequestParams = Privy::Models::ConditionSetRequestParams

  ConditionValue = Privy::Models::ConditionValue

  CreateAccountFromWalletIDsInput =
    Privy::Models::CreateAccountFromWalletIDsInput

  CreateAccountFromWalletsConfigurationInput =
    Privy::Models::CreateAccountFromWalletsConfigurationInput

  CreateAccountInput = Privy::Models::CreateAccountInput

  CreateLinkAuthIntentInput = Privy::Models::CreateLinkAuthIntentInput

  CreateLinkAuthIntentResponse = Privy::Models::CreateLinkAuthIntentResponse

  CreateOrganizationSecretResponse =
    Privy::Models::CreateOrganizationSecretResponse

  CreateOrUpdateFiatCustomerRequestInput =
    Privy::Models::CreateOrUpdateFiatCustomerRequestInput

  CreateStripeOnrampSessionInput = Privy::Models::CreateStripeOnrampSessionInput

  CreateStripeOnrampSessionResponse =
    Privy::Models::CreateStripeOnrampSessionResponse

  CrossAppConnection = Privy::Models::CrossAppConnection

  CrossAppConnectionsResponse = Privy::Models::CrossAppConnectionsResponse

  CrossAppEmbeddedWallet = Privy::Models::CrossAppEmbeddedWallet

  CrossAppSmartWallet = Privy::Models::CrossAppSmartWallet

  CryptoCurrencyCode = Privy::Models::CryptoCurrencyCode

  Currency = Privy::Models::Currency

  CurrencyAmount = Privy::Models::CurrencyAmount

  CurrencyAsset = Privy::Models::CurrencyAsset

  CurveSigningChainType = Privy::Models::CurveSigningChainType

  CurveType = Privy::Models::CurveType

  CustodialWallet = Privy::Models::CustodialWallet

  CustodialWalletChainType = Privy::Models::CustodialWalletChainType

  CustodialWalletCreateInput = Privy::Models::CustodialWalletCreateInput

  CustodialWalletProvider = Privy::Models::CustodialWalletProvider

  CustomJwtAuthenticateRequestBody =
    Privy::Models::CustomJwtAuthenticateRequestBody

  CustomJwtLinkRequestBody = Privy::Models::CustomJwtLinkRequestBody

  CustomMetadata =
    T.let(Privy::Models::CustomMetadata, Privy::Internal::Type::Converter)

  CustomMetadataItem = Privy::Models::CustomMetadataItem

  CustomOAuthProviderID = Privy::Models::CustomOAuthProviderID

  CustomTokenTransferSource = Privy::Models::CustomTokenTransferSource

  DeveloperFee = Privy::Models::DeveloperFee

  EarnAsset = Privy::Models::EarnAsset

  EarnClaimedRewardsQuery = Privy::Models::EarnClaimedRewardsQuery

  EarnClaimedRewardsResponse = Privy::Models::EarnClaimedRewardsResponse

  EarnDepositActionResponse = Privy::Models::EarnDepositActionResponse

  EarnDepositRequestBody = Privy::Models::EarnDepositRequestBody

  EarnIncentiveClaimActionResponse =
    Privy::Models::EarnIncentiveClaimActionResponse

  EarnIncentiveClaimRequestBody = Privy::Models::EarnIncentiveClaimRequestBody

  EarnIncetiveClaimRewardEntry = Privy::Models::EarnIncetiveClaimRewardEntry

  EarnWithdrawActionResponse = Privy::Models::EarnWithdrawActionResponse

  EarnWithdrawRequestBody = Privy::Models::EarnWithdrawRequestBody

  EmailDomain = Privy::Models::EmailDomain

  EmailDomainInviteInput = Privy::Models::EmailDomainInviteInput

  EmailInviteInput = Privy::Models::EmailInviteInput

  EmbeddedWalletChainConfig = Privy::Models::EmbeddedWalletChainConfig

  EmbeddedWalletConfigSchema = Privy::Models::EmbeddedWalletConfigSchema

  EmbeddedWalletCreateOnLogin = Privy::Models::EmbeddedWalletCreateOnLogin

  EmbeddedWalletCreationInput = Privy::Models::EmbeddedWalletCreationInput

  EmbeddedWalletInputSchema = Privy::Models::EmbeddedWalletInputSchema

  EmbeddedWalletMode = Privy::Models::EmbeddedWalletMode

  EmbeddedWalletRecoveryMethod = Privy::Models::EmbeddedWalletRecoveryMethod

  Ethereum7702AuthorizationCondition =
    Privy::Models::Ethereum7702AuthorizationCondition

  EthereumCalldataCondition = Privy::Models::EthereumCalldataCondition

  EthereumEarnPositionQuery = Privy::Models::EthereumEarnPositionQuery

  EthereumEarnPositionResponse = Privy::Models::EthereumEarnPositionResponse

  EthereumEarnProvider = Privy::Models::EthereumEarnProvider

  EthereumEarnVaultDetailsResponse =
    Privy::Models::EthereumEarnVaultDetailsResponse

  EthereumPersonalSignRpcInput = Privy::Models::EthereumPersonalSignRpcInput

  EthereumPersonalSignRpcInputParams =
    Privy::Models::EthereumPersonalSignRpcInputParams

  EthereumPersonalSignRpcResponse =
    Privy::Models::EthereumPersonalSignRpcResponse

  EthereumPersonalSignRpcResponseData =
    Privy::Models::EthereumPersonalSignRpcResponseData

  EthereumRpcInput = Privy::Models::EthereumRpcInput

  EthereumRpcResponse = Privy::Models::EthereumRpcResponse

  EthereumSecp256k1SignRpcInput = Privy::Models::EthereumSecp256k1SignRpcInput

  EthereumSecp256k1SignRpcInputParams =
    Privy::Models::EthereumSecp256k1SignRpcInputParams

  EthereumSecp256k1SignRpcResponse =
    Privy::Models::EthereumSecp256k1SignRpcResponse

  EthereumSecp256k1SignRpcResponseData =
    Privy::Models::EthereumSecp256k1SignRpcResponseData

  EthereumSendCallsCall = Privy::Models::EthereumSendCallsCall

  EthereumSendCallsRpcInput = Privy::Models::EthereumSendCallsRpcInput

  EthereumSendCallsRpcInputParams =
    Privy::Models::EthereumSendCallsRpcInputParams

  EthereumSendCallsRpcResponse = Privy::Models::EthereumSendCallsRpcResponse

  EthereumSendCallsRpcResponseData =
    Privy::Models::EthereumSendCallsRpcResponseData

  EthereumSendTransactionRpcInput =
    Privy::Models::EthereumSendTransactionRpcInput

  EthereumSendTransactionRpcInputParams =
    Privy::Models::EthereumSendTransactionRpcInputParams

  EthereumSendTransactionRpcResponse =
    Privy::Models::EthereumSendTransactionRpcResponse

  EthereumSendTransactionRpcResponseData =
    Privy::Models::EthereumSendTransactionRpcResponseData

  EthereumSign7702Authorization = Privy::Models::EthereumSign7702Authorization

  EthereumSign7702AuthorizationRpcInput =
    Privy::Models::EthereumSign7702AuthorizationRpcInput

  EthereumSign7702AuthorizationRpcInputParams =
    Privy::Models::EthereumSign7702AuthorizationRpcInputParams

  EthereumSign7702AuthorizationRpcResponse =
    Privy::Models::EthereumSign7702AuthorizationRpcResponse

  EthereumSign7702AuthorizationRpcResponseData =
    Privy::Models::EthereumSign7702AuthorizationRpcResponseData

  EthereumSignTransactionRpcInput =
    Privy::Models::EthereumSignTransactionRpcInput

  EthereumSignTransactionRpcInputParams =
    Privy::Models::EthereumSignTransactionRpcInputParams

  EthereumSignTransactionRpcResponse =
    Privy::Models::EthereumSignTransactionRpcResponse

  EthereumSignTransactionRpcResponseData =
    Privy::Models::EthereumSignTransactionRpcResponseData

  EthereumSignTypedDataRpcInput = Privy::Models::EthereumSignTypedDataRpcInput

  EthereumSignTypedDataRpcInputParams =
    Privy::Models::EthereumSignTypedDataRpcInputParams

  EthereumSignTypedDataRpcResponse =
    Privy::Models::EthereumSignTypedDataRpcResponse

  EthereumSignTypedDataRpcResponseData =
    Privy::Models::EthereumSignTypedDataRpcResponseData

  EthereumSignUserOperationRpcInput =
    Privy::Models::EthereumSignUserOperationRpcInput

  EthereumSignUserOperationRpcInputParams =
    Privy::Models::EthereumSignUserOperationRpcInputParams

  EthereumSignUserOperationRpcResponse =
    Privy::Models::EthereumSignUserOperationRpcResponse

  EthereumSignUserOperationRpcResponseData =
    Privy::Models::EthereumSignUserOperationRpcResponseData

  EthereumTransactionCondition = Privy::Models::EthereumTransactionCondition

  EthereumTypedDataDomainCondition =
    Privy::Models::EthereumTypedDataDomainCondition

  EthereumTypedDataInput = Privy::Models::EthereumTypedDataInput

  EthereumTypedDataMessageCondition =
    Privy::Models::EthereumTypedDataMessageCondition

  EthereumVaultDetailsInput = Privy::Models::EthereumVaultDetailsInput

  EthereumVaultDetailsResponse = Privy::Models::EthereumVaultDetailsResponse

  EthereumVaultPosition = Privy::Models::EthereumVaultPosition

  EthereumVaultResponse = Privy::Models::EthereumVaultResponse

  EthereumYieldClaimIDInput = Privy::Models::EthereumYieldClaimIDInput

  EthereumYieldClaimInput = Privy::Models::EthereumYieldClaimInput

  EthereumYieldClaimResponse = Privy::Models::EthereumYieldClaimResponse

  EthereumYieldClaimReward = Privy::Models::EthereumYieldClaimReward

  EthereumYieldDepositInput = Privy::Models::EthereumYieldDepositInput

  EthereumYieldPositionResponse = Privy::Models::EthereumYieldPositionResponse

  EthereumYieldPositionsInput = Privy::Models::EthereumYieldPositionsInput

  EthereumYieldProvider = Privy::Models::EthereumYieldProvider

  EthereumYieldSweepIDInput = Privy::Models::EthereumYieldSweepIDInput

  EthereumYieldSweepResponse = Privy::Models::EthereumYieldSweepResponse

  EthereumYieldSweepStatus = Privy::Models::EthereumYieldSweepStatus

  EthereumYieldSweepType = Privy::Models::EthereumYieldSweepType

  EthereumYieldWithdrawInput = Privy::Models::EthereumYieldWithdrawInput

  EvmCaip2ChainID = Privy::Models::EvmCaip2ChainID

  EvmTransactionWalletActionStep = Privy::Models::EvmTransactionWalletActionStep

  EvmUserOperationWalletActionStep =
    Privy::Models::EvmUserOperationWalletActionStep

  EvmWalletActionStepStatus = Privy::Models::EvmWalletActionStepStatus

  ExportPrivateKeyRpcInput = Privy::Models::ExportPrivateKeyRpcInput

  ExportPrivateKeyRpcResponse = Privy::Models::ExportPrivateKeyRpcResponse

  ExportSeedPhraseRpcInput = Privy::Models::ExportSeedPhraseRpcInput

  ExportSeedPhraseRpcResponse = Privy::Models::ExportSeedPhraseRpcResponse

  ExportType = Privy::Models::ExportType

  ExtendedChainType = Privy::Models::ExtendedChainType

  ExternalOAuthProviderID = Privy::Models::ExternalOAuthProviderID

  ExternalTransactionWalletActionStep =
    Privy::Models::ExternalTransactionWalletActionStep

  ExternalTransactionWalletActionStepStatus =
    Privy::Models::ExternalTransactionWalletActionStepStatus

  FailureReason = Privy::Models::FailureReason

  FarcasterAuthenticateInput = Privy::Models::FarcasterAuthenticateInput

  FarcasterAuthenticateRequestBody =
    Privy::Models::FarcasterAuthenticateRequestBody

  FarcasterConnectInitResponse = Privy::Models::FarcasterConnectInitResponse

  FarcasterConnectInitResponseBody =
    Privy::Models::FarcasterConnectInitResponseBody

  FarcasterConnectStatusCompletedResponse =
    Privy::Models::FarcasterConnectStatusCompletedResponse

  FarcasterConnectStatusCompletedResponseBody =
    Privy::Models::FarcasterConnectStatusCompletedResponseBody

  FarcasterConnectStatusPendingResponse =
    Privy::Models::FarcasterConnectStatusPendingResponse

  FarcasterConnectStatusPendingResponseBody =
    Privy::Models::FarcasterConnectStatusPendingResponseBody

  FarcasterInitInput = Privy::Models::FarcasterInitInput

  FarcasterInitRequestBody = Privy::Models::FarcasterInitRequestBody

  FarcasterLinkInput = Privy::Models::FarcasterLinkInput

  FarcasterLinkRequestBody = Privy::Models::FarcasterLinkRequestBody

  FarcasterSignerApproved = Privy::Models::FarcasterSignerApproved

  FarcasterSignerInitPendingApproval =
    Privy::Models::FarcasterSignerInitPendingApproval

  FarcasterSignerInitRequestBody = Privy::Models::FarcasterSignerInitRequestBody

  FarcasterSignerInitResponseBody =
    Privy::Models::FarcasterSignerInitResponseBody

  FarcasterSignerRevoked = Privy::Models::FarcasterSignerRevoked

  FarcasterSignerStatusPendingApproval =
    Privy::Models::FarcasterSignerStatusPendingApproval

  FarcasterSignerStatusResponseBody =
    Privy::Models::FarcasterSignerStatusResponseBody

  FarcasterUnlinkInput = Privy::Models::FarcasterUnlinkInput

  FarcasterUnlinkRequestBody = Privy::Models::FarcasterUnlinkRequestBody

  FarcasterV2AuthenticateInput = Privy::Models::FarcasterV2AuthenticateInput

  FarcasterV2AuthenticateRequestBody =
    Privy::Models::FarcasterV2AuthenticateRequestBody

  FarcasterV2InitInput = Privy::Models::FarcasterV2InitInput

  FarcasterV2InitRequestBody = Privy::Models::FarcasterV2InitRequestBody

  FarcasterV2InitResponse = Privy::Models::FarcasterV2InitResponse

  FarcasterV2InitResponseBody = Privy::Models::FarcasterV2InitResponseBody

  FeeConfiguration = Privy::Models::FeeConfiguration

  FeeLineItem = Privy::Models::FeeLineItem

  FiatAmount = Privy::Models::FiatAmount

  FiatCurrencyCode = Privy::Models::FiatCurrencyCode

  FiatCustomerResponse = Privy::Models::FiatCustomerResponse

  FiatOnrampDestination = Privy::Models::FiatOnrampDestination

  FiatOnrampEnvironment = Privy::Models::FiatOnrampEnvironment

  FiatOnrampProvider = Privy::Models::FiatOnrampProvider

  FiatOnrampProviderError = Privy::Models::FiatOnrampProviderError

  FiatOnrampQuote = Privy::Models::FiatOnrampQuote

  FiatOnrampSource = Privy::Models::FiatOnrampSource

  FiatOnrampStripeSDKSessionResponse =
    Privy::Models::FiatOnrampStripeSDKSessionResponse

  FiatOnrampTransactionStatus = Privy::Models::FiatOnrampTransactionStatus

  FiatOnrampURLSessionResponse = Privy::Models::FiatOnrampURLSessionResponse

  FiatVirtualAccountRequest = Privy::Models::FiatVirtualAccountRequest

  FiatVirtualAccountResponse = Privy::Models::FiatVirtualAccountResponse

  FirstClassChainType = Privy::Models::FirstClassChainType

  FundingConfigResponseSchema = Privy::Models::FundingConfigResponseSchema

  FundingMethodEnum = Privy::Models::FundingMethodEnum

  FundingOption = Privy::Models::FundingOption

  FundsDepositedWebhookPayload = Privy::Models::FundsDepositedWebhookPayload

  FundsWithdrawnWebhookPayload = Privy::Models::FundsWithdrawnWebhookPayload

  GasSpendCurrency = Privy::Models::GasSpendCurrency

  GasSpendRequestBody = Privy::Models::GasSpendRequestBody

  GasSpendResponseBody = Privy::Models::GasSpendResponseBody

  GasSponsorshipConfiguration = Privy::Models::GasSponsorshipConfiguration

  GasSponsorshipConfigurationInput =
    Privy::Models::GasSponsorshipConfigurationInput

  GetByWalletAddressRequestBody = Privy::Models::GetByWalletAddressRequestBody

  GetFiatCustomerRequestInput = Privy::Models::GetFiatCustomerRequestInput

  GetFiatOnrampQuotesInput = Privy::Models::GetFiatOnrampQuotesInput

  GetFiatOnrampQuotesResponse = Privy::Models::GetFiatOnrampQuotesResponse

  GetFiatOnrampTransactionStatusInput =
    Privy::Models::GetFiatOnrampTransactionStatusInput

  GetFiatOnrampTransactionStatusResponse =
    Privy::Models::GetFiatOnrampTransactionStatusResponse

  GetFiatOnrampURLInput = Privy::Models::GetFiatOnrampURLInput

  GetFiatOnrampURLResponse = Privy::Models::GetFiatOnrampURLResponse

  GetStripeCryptoCustomerInput = Privy::Models::GetStripeCryptoCustomerInput

  GetStripeCryptoCustomerResponse =
    Privy::Models::GetStripeCryptoCustomerResponse

  GuestAuthenticateRequestBody = Privy::Models::GuestAuthenticateRequestBody

  HDInitInput = Privy::Models::HDInitInput

  HDPath = Privy::Models::HDPath

  HDSubmitInput = Privy::Models::HDSubmitInput

  Hex = Privy::Models::Hex

  HpkeAeadAlgorithm = Privy::Models::HpkeAeadAlgorithm

  HpkeEncryption = Privy::Models::HpkeEncryption

  HpkeImportConfig = Privy::Models::HpkeImportConfig

  ICloudClientType = Privy::Models::ICloudClientType

  IntentAuthorization = Privy::Models::IntentAuthorization

  IntentAuthorizationKeyQuorumMember =
    Privy::Models::IntentAuthorizationKeyQuorumMember

  IntentAuthorizationMember = Privy::Models::IntentAuthorizationMember

  IntentAuthorizedWebhookPayload = Privy::Models::IntentAuthorizedWebhookPayload

  IntentAuthorizeInput = Privy::Models::IntentAuthorizeInput

  IntentCreatedWebhookPayload = Privy::Models::IntentCreatedWebhookPayload

  IntentCreatePolicyRuleParams = Privy::Models::IntentCreatePolicyRuleParams

  IntentCreationHeaders = Privy::Models::IntentCreationHeaders

  IntentDeletePolicyRuleParams = Privy::Models::IntentDeletePolicyRuleParams

  IntentExecutedWebhookPayload = Privy::Models::IntentExecutedWebhookPayload

  IntentFailedWebhookPayload = Privy::Models::IntentFailedWebhookPayload

  IntentGetParams = Privy::Models::IntentGetParams

  IntentListParams = Privy::Models::IntentListParams

  IntentRejectedWebhookPayload = Privy::Models::IntentRejectedWebhookPayload

  IntentResponse = Privy::Models::IntentResponse

  IntentRpcParams = Privy::Models::IntentRpcParams

  IntentStatus = Privy::Models::IntentStatus

  IntentTransferParams = Privy::Models::IntentTransferParams

  IntentType = Privy::Models::IntentType

  IntentUpdateKeyQuorumParams = Privy::Models::IntentUpdateKeyQuorumParams

  IntentUpdatePolicyParams = Privy::Models::IntentUpdatePolicyParams

  IntentUpdatePolicyRuleParams = Privy::Models::IntentUpdatePolicyRuleParams

  IntentUpdateWalletParams = Privy::Models::IntentUpdateWalletParams

  KeyQuorum = Privy::Models::KeyQuorum

  KeyQuorumAuthorizationHeaders = Privy::Models::KeyQuorumAuthorizationHeaders

  KeyQuorumCreateParams = Privy::Models::KeyQuorumCreateParams

  KeyQuorumCreateRequestBody = Privy::Models::KeyQuorumCreateRequestBody

  KeyQuorumDeleteParams = Privy::Models::KeyQuorumDeleteParams

  KeyQuorumGetParams = Privy::Models::KeyQuorumGetParams

  KeyQuorumID = Privy::Models::KeyQuorumID

  KeyQuorumIntentResponse = Privy::Models::KeyQuorumIntentResponse

  KeyQuorumUpdateParams = Privy::Models::KeyQuorumUpdateParams

  KeyQuorumUpdateRequestBody = Privy::Models::KeyQuorumUpdateRequestBody

  KrakenEmbedCancelCustomOrderInput =
    Privy::Models::KrakenEmbedCancelCustomOrderInput

  KrakenEmbedCancelCustomOrderPath =
    Privy::Models::KrakenEmbedCancelCustomOrderPath

  KrakenEmbedCancelCustomOrderResponse =
    Privy::Models::KrakenEmbedCancelCustomOrderResponse

  KrakenEmbedCancelCustomOrderResult =
    Privy::Models::KrakenEmbedCancelCustomOrderResult

  KrakenEmbedCreateCustomOrderInput =
    Privy::Models::KrakenEmbedCreateCustomOrderInput

  KrakenEmbedCreateCustomOrderResponse =
    Privy::Models::KrakenEmbedCreateCustomOrderResponse

  KrakenEmbedCreateCustomOrderResult =
    Privy::Models::KrakenEmbedCreateCustomOrderResult

  KrakenEmbedCurrentDayPnl = Privy::Models::KrakenEmbedCurrentDayPnl

  KrakenEmbedCustomOrder = Privy::Models::KrakenEmbedCustomOrder

  KrakenEmbedCustomOrderAction = Privy::Models::KrakenEmbedCustomOrderAction

  KrakenEmbedCustomOrderAmount = Privy::Models::KrakenEmbedCustomOrderAmount

  KrakenEmbedCustomOrderCancelledWebhookPayload =
    Privy::Models::KrakenEmbedCustomOrderCancelledWebhookPayload

  KrakenEmbedCustomOrderExecutedWebhookPayload =
    Privy::Models::KrakenEmbedCustomOrderExecutedWebhookPayload

  KrakenEmbedCustomOrderExecutionFailedWebhookPayload =
    Privy::Models::KrakenEmbedCustomOrderExecutionFailedWebhookPayload

  KrakenEmbedCustomOrderOccurrence =
    Privy::Models::KrakenEmbedCustomOrderOccurrence

  KrakenEmbedCustomOrderOccurrenceExecutedAction =
    Privy::Models::KrakenEmbedCustomOrderOccurrenceExecutedAction

  KrakenEmbedCustomOrderOccurrenceTrigger =
    Privy::Models::KrakenEmbedCustomOrderOccurrenceTrigger

  KrakenEmbedCustomOrderQuoteAsset =
    Privy::Models::KrakenEmbedCustomOrderQuoteAsset

  KrakenEmbedCustomOrderStatus = Privy::Models::KrakenEmbedCustomOrderStatus

  KrakenEmbedCustomOrderTrigger = Privy::Models::KrakenEmbedCustomOrderTrigger

  KrakenEmbedEarnAmount = Privy::Models::KrakenEmbedEarnAmount

  KrakenEmbedEarnAprEstimate = Privy::Models::KrakenEmbedEarnAprEstimate

  KrakenEmbedEarnAsset = Privy::Models::KrakenEmbedEarnAsset

  KrakenEmbedEarnUserAllocation = Privy::Models::KrakenEmbedEarnUserAllocation

  KrakenEmbedGetAssetListQueryParamsSchema =
    Privy::Models::KrakenEmbedGetAssetListQueryParamsSchema

  KrakenEmbedGetCustomOrderHistoryQueryParams =
    Privy::Models::KrakenEmbedGetCustomOrderHistoryQueryParams

  KrakenEmbedGetCustomOrderHistoryResponse =
    Privy::Models::KrakenEmbedGetCustomOrderHistoryResponse

  KrakenEmbedGetCustomOrderHistoryResult =
    Privy::Models::KrakenEmbedGetCustomOrderHistoryResult

  KrakenEmbedGetCustomOrderQueryParams =
    Privy::Models::KrakenEmbedGetCustomOrderQueryParams

  KrakenEmbedGetCustomOrderResponse =
    Privy::Models::KrakenEmbedGetCustomOrderResponse

  KrakenEmbedGetCustomOrderResult =
    Privy::Models::KrakenEmbedGetCustomOrderResult

  KrakenEmbedGetEarnAssetsKrakenResponse =
    Privy::Models::KrakenEmbedGetEarnAssetsKrakenResponse

  KrakenEmbedGetEarnAssetsQueryParams =
    Privy::Models::KrakenEmbedGetEarnAssetsQueryParams

  KrakenEmbedGetEarnAssetsResponse =
    Privy::Models::KrakenEmbedGetEarnAssetsResponse

  KrakenEmbedGetEarnAssetsResult = Privy::Models::KrakenEmbedGetEarnAssetsResult

  KrakenEmbedGetEarnSummaryKrakenResponse =
    Privy::Models::KrakenEmbedGetEarnSummaryKrakenResponse

  KrakenEmbedGetEarnSummaryQueryParams =
    Privy::Models::KrakenEmbedGetEarnSummaryQueryParams

  KrakenEmbedGetEarnSummaryResponse =
    Privy::Models::KrakenEmbedGetEarnSummaryResponse

  KrakenEmbedGetEarnSummaryResult =
    Privy::Models::KrakenEmbedGetEarnSummaryResult

  KrakenEmbedGetPortfolioDetailsQueryParamsSchema =
    Privy::Models::KrakenEmbedGetPortfolioDetailsQueryParamsSchema

  KrakenEmbedGetPortfolioSummaryQueryParams =
    Privy::Models::KrakenEmbedGetPortfolioSummaryQueryParams

  KrakenEmbedGetPortfolioSummaryResponse =
    Privy::Models::KrakenEmbedGetPortfolioSummaryResponse

  KrakenEmbedGetPortfolioTransactionsQueryParamsSchema =
    Privy::Models::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema

  KrakenEmbedGetQuoteQueryParams = Privy::Models::KrakenEmbedGetQuoteQueryParams

  KrakenEmbedListCustomOrdersQueryParams =
    Privy::Models::KrakenEmbedListCustomOrdersQueryParams

  KrakenEmbedListCustomOrdersResponse =
    Privy::Models::KrakenEmbedListCustomOrdersResponse

  KrakenEmbedListCustomOrdersResult =
    Privy::Models::KrakenEmbedListCustomOrdersResult

  KrakenEmbedQuoteCancelledWebhookPayload =
    Privy::Models::KrakenEmbedQuoteCancelledWebhookPayload

  KrakenEmbedQuoteExecutedWebhookPayload =
    Privy::Models::KrakenEmbedQuoteExecutedWebhookPayload

  KrakenEmbedQuoteExecutionFailedWebhookPayload =
    Privy::Models::KrakenEmbedQuoteExecutionFailedWebhookPayload

  KrakenEmbedStartAddressMetadata =
    Privy::Models::KrakenEmbedStartAddressMetadata

  KrakenEmbedStartAddressVerificationURLInput =
    Privy::Models::KrakenEmbedStartAddressVerificationURLInput

  KrakenEmbedStartIdentityInfo = Privy::Models::KrakenEmbedStartIdentityInfo

  KrakenEmbedStartIdentityMetadata =
    Privy::Models::KrakenEmbedStartIdentityMetadata

  KrakenEmbedStartIdentityVerificationURLInput =
    Privy::Models::KrakenEmbedStartIdentityVerificationURLInput

  KrakenEmbedStartLivenessVerificationURLInput =
    Privy::Models::KrakenEmbedStartLivenessVerificationURLInput

  KrakenEmbedStartVerificationDebug =
    Privy::Models::KrakenEmbedStartVerificationDebug

  KrakenEmbedStartVerificationURLInput =
    Privy::Models::KrakenEmbedStartVerificationURLInput

  KrakenEmbedStartVerificationURLResponse =
    Privy::Models::KrakenEmbedStartVerificationURLResponse

  KrakenEmbedStartVerificationURLResult =
    Privy::Models::KrakenEmbedStartVerificationURLResult

  KrakenEmbedToggleAutoEarnKrakenResponse =
    Privy::Models::KrakenEmbedToggleAutoEarnKrakenResponse

  KrakenEmbedToggleAutoEarnQueryParams =
    Privy::Models::KrakenEmbedToggleAutoEarnQueryParams

  KrakenEmbedToggleAutoEarnResponse =
    Privy::Models::KrakenEmbedToggleAutoEarnResponse

  KrakenEmbedUpcomingReward = Privy::Models::KrakenEmbedUpcomingReward

  KrakenEmbedUserClosedWebhookPayload =
    Privy::Models::KrakenEmbedUserClosedWebhookPayload

  KrakenEmbedUserDisabledWebhookPayload =
    Privy::Models::KrakenEmbedUserDisabledWebhookPayload

  KrakenEmbedUserVerifiedWebhookPayload =
    Privy::Models::KrakenEmbedUserVerifiedWebhookPayload

  LinkedAccount = Privy::Models::LinkedAccount

  LinkedAccountAppleInput = Privy::Models::LinkedAccountAppleInput

  LinkedAccountAppleOAuth = Privy::Models::LinkedAccountAppleOAuth

  LinkedAccountAuthorizationKey = Privy::Models::LinkedAccountAuthorizationKey

  LinkedAccountBaseWallet = Privy::Models::LinkedAccountBaseWallet

  LinkedAccountBitcoinSegwitEmbeddedWallet =
    Privy::Models::LinkedAccountBitcoinSegwitEmbeddedWallet

  LinkedAccountBitcoinTaprootEmbeddedWallet =
    Privy::Models::LinkedAccountBitcoinTaprootEmbeddedWallet

  LinkedAccountCrossApp = Privy::Models::LinkedAccountCrossApp

  LinkedAccountCurveSigningEmbeddedWallet =
    Privy::Models::LinkedAccountCurveSigningEmbeddedWallet

  LinkedAccountCustomJwt = Privy::Models::LinkedAccountCustomJwt

  LinkedAccountCustomJwtInput = Privy::Models::LinkedAccountCustomJwtInput

  LinkedAccountCustomOAuth = Privy::Models::LinkedAccountCustomOAuth

  LinkedAccountDiscordInput = Privy::Models::LinkedAccountDiscordInput

  LinkedAccountDiscordOAuth = Privy::Models::LinkedAccountDiscordOAuth

  LinkedAccountEmail = Privy::Models::LinkedAccountEmail

  LinkedAccountEmailInput = Privy::Models::LinkedAccountEmailInput

  LinkedAccountEmbeddedWallet = Privy::Models::LinkedAccountEmbeddedWallet

  LinkedAccountEmbeddedWalletWithID =
    Privy::Models::LinkedAccountEmbeddedWalletWithID

  LinkedAccountEthereum = Privy::Models::LinkedAccountEthereum

  LinkedAccountEthereumEmbeddedWallet =
    Privy::Models::LinkedAccountEthereumEmbeddedWallet

  LinkedAccountFarcaster = Privy::Models::LinkedAccountFarcaster

  LinkedAccountFarcasterInput = Privy::Models::LinkedAccountFarcasterInput

  LinkedAccountGitHubInput = Privy::Models::LinkedAccountGitHubInput

  LinkedAccountGitHubOAuth = Privy::Models::LinkedAccountGitHubOAuth

  LinkedAccountGoogleInput = Privy::Models::LinkedAccountGoogleInput

  LinkedAccountGoogleOAuth = Privy::Models::LinkedAccountGoogleOAuth

  LinkedAccountInput = Privy::Models::LinkedAccountInput

  LinkedAccountInstagramInput = Privy::Models::LinkedAccountInstagramInput

  LinkedAccountInstagramOAuth = Privy::Models::LinkedAccountInstagramOAuth

  LinkedAccountLineInput = Privy::Models::LinkedAccountLineInput

  LinkedAccountLineOAuth = Privy::Models::LinkedAccountLineOAuth

  LinkedAccountLinkedInInput = Privy::Models::LinkedAccountLinkedInInput

  LinkedAccountLinkedInOAuth = Privy::Models::LinkedAccountLinkedInOAuth

  LinkedAccountPasskey = Privy::Models::LinkedAccountPasskey

  LinkedAccountPasskeyInput = Privy::Models::LinkedAccountPasskeyInput

  LinkedAccountPhone = Privy::Models::LinkedAccountPhone

  LinkedAccountPhoneInput = Privy::Models::LinkedAccountPhoneInput

  LinkedAccountSmartWallet = Privy::Models::LinkedAccountSmartWallet

  LinkedAccountSolana = Privy::Models::LinkedAccountSolana

  LinkedAccountSolanaEmbeddedWallet =
    Privy::Models::LinkedAccountSolanaEmbeddedWallet

  LinkedAccountSpotifyInput = Privy::Models::LinkedAccountSpotifyInput

  LinkedAccountSpotifyOAuth = Privy::Models::LinkedAccountSpotifyOAuth

  LinkedAccountTelegram = Privy::Models::LinkedAccountTelegram

  LinkedAccountTelegramInput = Privy::Models::LinkedAccountTelegramInput

  LinkedAccountTiktokInput = Privy::Models::LinkedAccountTiktokInput

  LinkedAccountTiktokOAuth = Privy::Models::LinkedAccountTiktokOAuth

  LinkedAccountTwitchInput = Privy::Models::LinkedAccountTwitchInput

  LinkedAccountTwitchOAuth = Privy::Models::LinkedAccountTwitchOAuth

  LinkedAccountTwitterInput = Privy::Models::LinkedAccountTwitterInput

  LinkedAccountTwitterOAuth = Privy::Models::LinkedAccountTwitterOAuth

  LinkedAccountType = Privy::Models::LinkedAccountType

  LinkedAccountWalletInput = Privy::Models::LinkedAccountWalletInput

  LinkedMfaMethod = Privy::Models::LinkedMfaMethod

  LinkJwtInput = Privy::Models::LinkJwtInput

  ListStripeConsumerWalletsResponse =
    Privy::Models::ListStripeConsumerWalletsResponse

  ListStripePaymentTokensResponse =
    Privy::Models::ListStripePaymentTokensResponse

  MfaDisabledWebhookPayload = Privy::Models::MfaDisabledWebhookPayload

  MfaEnabledWebhookPayload = Privy::Models::MfaEnabledWebhookPayload

  MfaPasskeyEnrollmentRequestBody =
    Privy::Models::MfaPasskeyEnrollmentRequestBody

  MfaPasskeyInitRequestBody = Privy::Models::MfaPasskeyInitRequestBody

  MfaPasskeyInitResponseBody = Privy::Models::MfaPasskeyInitResponseBody

  MfaPasskeyVerifyRequestBody = Privy::Models::MfaPasskeyVerifyRequestBody

  MfaSMSEnrollRequestBody = Privy::Models::MfaSMSEnrollRequestBody

  MfaSMSInitEnrollInput = Privy::Models::MfaSMSInitEnrollInput

  MfaSMSInitRequestBody = Privy::Models::MfaSMSInitRequestBody

  MfaSMSInitVerifyInput = Privy::Models::MfaSMSInitVerifyInput

  MfaSMSVerifyRequestBody = Privy::Models::MfaSMSVerifyRequestBody

  MfaTotpInitResponseBody = Privy::Models::MfaTotpInitResponseBody

  MfaTotpInput = Privy::Models::MfaTotpInput

  MfaVerifyResponseBody = Privy::Models::MfaVerifyResponseBody

  MoonpayCurrencyCode = Privy::Models::MoonpayCurrencyCode

  MoonpayFiatOnRampEthereumConfig =
    Privy::Models::MoonpayFiatOnRampEthereumConfig

  MoonpayFiatOnRampEthereumInput = Privy::Models::MoonpayFiatOnRampEthereumInput

  MoonpayFiatOnRampSolanaConfig = Privy::Models::MoonpayFiatOnRampSolanaConfig

  MoonpayFiatOnRampSolanaInput = Privy::Models::MoonpayFiatOnRampSolanaInput

  MoonpayOnRampSandboxConfig = Privy::Models::MoonpayOnRampSandboxConfig

  MoonpayOnRampSignInput = Privy::Models::MoonpayOnRampSignInput

  MoonpayOnRampSignResponse = Privy::Models::MoonpayOnRampSignResponse

  MoonpayPaymentMethod = Privy::Models::MoonpayPaymentMethod

  MoonpaySolanaCurrencyCode = Privy::Models::MoonpaySolanaCurrencyCode

  MoonpayUiConfig = Privy::Models::MoonpayUiConfig

  MoonpayUiTheme = Privy::Models::MoonpayUiTheme

  NamedTokenTransferSource = Privy::Models::NamedTokenTransferSource

  OAuthAuthenticateRecoveryResponse =
    Privy::Models::OAuthAuthenticateRecoveryResponse

  OAuthAuthenticateRequestBody = Privy::Models::OAuthAuthenticateRequestBody

  OAuthAuthorizationCodeRequestBody =
    Privy::Models::OAuthAuthorizationCodeRequestBody

  OAuthCallbackICloudExpoInput = Privy::Models::OAuthCallbackICloudExpoInput

  OAuthCodeType = Privy::Models::OAuthCodeType

  OAuthInitICloudRecoveryInput = Privy::Models::OAuthInitICloudRecoveryInput

  OAuthInitRecoveryInput = Privy::Models::OAuthInitRecoveryInput

  OAuthInitRequestBody = Privy::Models::OAuthInitRequestBody

  OAuthInitResponseBody = Privy::Models::OAuthInitResponseBody

  OAuthLinkRequestBody = Privy::Models::OAuthLinkRequestBody

  OAuthLinkResponseBody = Privy::Models::OAuthLinkResponseBody

  OAuthProviderID = Privy::Models::OAuthProviderID

  OAuthTokens = Privy::Models::OAuthTokens

  OAuthTransferRequestBody = Privy::Models::OAuthTransferRequestBody

  OAuthTransferUserInfo = Privy::Models::OAuthTransferUserInfo

  OAuthTransferUserInfoMeta = Privy::Models::OAuthTransferUserInfoMeta

  OAuthUnlinkRequestBody = Privy::Models::OAuthUnlinkRequestBody

  OAuthVerifyRequestBody = Privy::Models::OAuthVerifyRequestBody

  OAuthVerifyResponseBody = Privy::Models::OAuthVerifyResponseBody

  OnrampProvider = Privy::Models::OnrampProvider

  OnrampSessionParams = Privy::Models::OnrampSessionParams

  OptionalRefreshTokenInput = Privy::Models::OptionalRefreshTokenInput

  OrganizationSecretIDInput = Privy::Models::OrganizationSecretIDInput

  OrganizationSecretsListResponse =
    Privy::Models::OrganizationSecretsListResponse

  OrganizationSecretView = Privy::Models::OrganizationSecretView

  OutputWithPreviousTransactionData =
    Privy::Models::OutputWithPreviousTransactionData

  OwnerIDInput = Privy::Models::OwnerIDInput

  OwnerInput = Privy::Models::OwnerInput

  OwnerInputPublicKey = Privy::Models::OwnerInputPublicKey

  OwnerInputUser = Privy::Models::OwnerInputUser

  P256PublicKey = Privy::Models::P256PublicKey

  PasskeyAssertionResponse = Privy::Models::PasskeyAssertionResponse

  PasskeyAttestationResponse = Privy::Models::PasskeyAttestationResponse

  PasskeyAuthenticateInput = Privy::Models::PasskeyAuthenticateInput

  PasskeyAuthenticatorEnrollmentOptions =
    Privy::Models::PasskeyAuthenticatorEnrollmentOptions

  PasskeyAuthenticatorEnrollmentResponse =
    Privy::Models::PasskeyAuthenticatorEnrollmentResponse

  PasskeyAuthenticatorSelection = Privy::Models::PasskeyAuthenticatorSelection

  PasskeyAuthenticatorVerifyOptions =
    Privy::Models::PasskeyAuthenticatorVerifyOptions

  PasskeyAuthenticatorVerifyResponse =
    Privy::Models::PasskeyAuthenticatorVerifyResponse

  PasskeyClientExtensionResults = Privy::Models::PasskeyClientExtensionResults

  PasskeyCredentialDescriptor = Privy::Models::PasskeyCredentialDescriptor

  PasskeyCredPropsResult = Privy::Models::PasskeyCredPropsResult

  PasskeyEnrollmentExtensions = Privy::Models::PasskeyEnrollmentExtensions

  PasskeyInitInput = Privy::Models::PasskeyInitInput

  PasskeyLinkInput = Privy::Models::PasskeyLinkInput

  PasskeyMfaMethod = Privy::Models::PasskeyMfaMethod

  PasskeyPubKeyCredParam = Privy::Models::PasskeyPubKeyCredParam

  PasskeyRegisterInput = Privy::Models::PasskeyRegisterInput

  PasskeyRelyingParty = Privy::Models::PasskeyRelyingParty

  PasskeyUser = Privy::Models::PasskeyUser

  PasskeyVerifyExtensions = Privy::Models::PasskeyVerifyExtensions

  PasswordlessAuthenticateRequestBody =
    Privy::Models::PasswordlessAuthenticateRequestBody

  PasswordlessInitRequestBody = Privy::Models::PasswordlessInitRequestBody

  PasswordlessLinkRequestBody = Privy::Models::PasswordlessLinkRequestBody

  PasswordlessSMSAuthenticateRequestBody =
    Privy::Models::PasswordlessSMSAuthenticateRequestBody

  PasswordlessSMSInitRequestBody = Privy::Models::PasswordlessSMSInitRequestBody

  PasswordlessSMSLinkRequestBody = Privy::Models::PasswordlessSMSLinkRequestBody

  PasswordlessSMSTransferRequestBody =
    Privy::Models::PasswordlessSMSTransferRequestBody

  PasswordlessSMSUnlinkRequestBody =
    Privy::Models::PasswordlessSMSUnlinkRequestBody

  PasswordlessSMSUpdateRequestBody =
    Privy::Models::PasswordlessSMSUpdateRequestBody

  PasswordlessTransferRequestBody =
    Privy::Models::PasswordlessTransferRequestBody

  PasswordlessUnlinkRequestBody = Privy::Models::PasswordlessUnlinkRequestBody

  PasswordlessUpdateRequestBody = Privy::Models::PasswordlessUpdateRequestBody

  PatchUsersCustomMetadata = Privy::Models::PatchUsersCustomMetadata

  PhoneInviteInput = Privy::Models::PhoneInviteInput

  Policy = Privy::Models::Policy

  PolicyAction = Privy::Models::PolicyAction

  PolicyAuthorizationHeaders = Privy::Models::PolicyAuthorizationHeaders

  PolicyCondition = Privy::Models::PolicyCondition

  PolicyCreateParams = Privy::Models::PolicyCreateParams

  PolicyCreateRuleParams = Privy::Models::PolicyCreateRuleParams

  PolicyDeleteParams = Privy::Models::PolicyDeleteParams

  PolicyDeleteRuleParams = Privy::Models::PolicyDeleteRuleParams

  PolicyGetParams = Privy::Models::PolicyGetParams

  PolicyGetRuleParams = Privy::Models::PolicyGetRuleParams

  PolicyInput =
    T.let(Privy::Models::PolicyInput, Privy::Internal::Type::Converter)

  PolicyIntentRequestDetails = Privy::Models::PolicyIntentRequestDetails

  PolicyIntentResponse = Privy::Models::PolicyIntentResponse

  PolicyMethod = Privy::Models::PolicyMethod

  PolicyRequestBody = Privy::Models::PolicyRequestBody

  PolicyRuleRequestBody = Privy::Models::PolicyRuleRequestBody

  PolicyRuleRequestParams = Privy::Models::PolicyRuleRequestParams

  PolicyRuleResponse = Privy::Models::PolicyRuleResponse

  PolicyUpdateParams = Privy::Models::PolicyUpdateParams

  PolicyUpdateRuleParams = Privy::Models::PolicyUpdateRuleParams

  PrivateKeyExportInput = Privy::Models::PrivateKeyExportInput

  PrivateKeyExportResponse = Privy::Models::PrivateKeyExportResponse

  PrivateKeyExportWebhookPayload = Privy::Models::PrivateKeyExportWebhookPayload

  PrivateKeyInitInput = Privy::Models::PrivateKeyInitInput

  PrivateKeySubmitInput = Privy::Models::PrivateKeySubmitInput

  PrivyFee = Privy::Models::PrivyFee

  PrivyOAuthProviderID = Privy::Models::PrivyOAuthProviderID

  Quantity = Privy::Models::Quantity

  RawSignBytesEncoding = Privy::Models::RawSignBytesEncoding

  RawSignBytesHashFunction = Privy::Models::RawSignBytesHashFunction

  RawSignBytesParams = Privy::Models::RawSignBytesParams

  RawSignHashParams = Privy::Models::RawSignHashParams

  RawSignInput = Privy::Models::RawSignInput

  RawSignInputParams = Privy::Models::RawSignInputParams

  RawSignResponse = Privy::Models::RawSignResponse

  RawSignResponseData = Privy::Models::RawSignResponseData

  RecipientPublicKey = Privy::Models::RecipientPublicKey

  RecoveryConfigurationICloudInput =
    Privy::Models::RecoveryConfigurationICloudInput

  RecoveryConfigurationICloudResponse =
    Privy::Models::RecoveryConfigurationICloudResponse

  RecoveryKeyMaterialInput = Privy::Models::RecoveryKeyMaterialInput

  RecoveryKeyMaterialResponse = Privy::Models::RecoveryKeyMaterialResponse

  RecoveryType = Privy::Models::RecoveryType

  RefreshStripeQuoteInput = Privy::Models::RefreshStripeQuoteInput

  RefreshStripeQuoteResponse = Privy::Models::RefreshStripeQuoteResponse

  RelayerFee = Privy::Models::RelayerFee

  ResponsePasskeyInitAuthenticate =
    Privy::Models::ResponsePasskeyInitAuthenticate

  ResponsePasskeyInitLink = Privy::Models::ResponsePasskeyInitLink

  ResponsePasskeyInitRegister = Privy::Models::ResponsePasskeyInitRegister

  RpcIntentRequestDetails = Privy::Models::RpcIntentRequestDetails

  RpcIntentResponse = Privy::Models::RpcIntentResponse

  RuleDeleteIntentResponse = Privy::Models::RuleDeleteIntentResponse

  RuleIntentCreateRequestDetails = Privy::Models::RuleIntentCreateRequestDetails

  RuleIntentDeleteRequestDetails = Privy::Models::RuleIntentDeleteRequestDetails

  RuleIntentRequestDetails = Privy::Models::RuleIntentRequestDetails

  RuleIntentResponse = Privy::Models::RuleIntentResponse

  RuleIntentUpdateRequestDetails = Privy::Models::RuleIntentUpdateRequestDetails

  RuleMutateIntentResponse = Privy::Models::RuleMutateIntentResponse

  SeedPhraseExportInput = Privy::Models::SeedPhraseExportInput

  SeedPhraseExportResponse = Privy::Models::SeedPhraseExportResponse

  SeedPhraseExportWebhookPayload = Privy::Models::SeedPhraseExportWebhookPayload

  SigningAlgorithm = Privy::Models::SigningAlgorithm

  SiweAddressInput = Privy::Models::SiweAddressInput

  SiweAuthenticateRequestBody = Privy::Models::SiweAuthenticateRequestBody

  SiweInitInput = Privy::Models::SiweInitInput

  SiweInitRequestBody = Privy::Models::SiweInitRequestBody

  SiweInitResponseBody = Privy::Models::SiweInitResponseBody

  SiweInput = Privy::Models::SiweInput

  SiweLinkRequestBody = Privy::Models::SiweLinkRequestBody

  SiweLinkSmartWalletRequestBody = Privy::Models::SiweLinkSmartWalletRequestBody

  SiweNonce = Privy::Models::SiweNonce

  SiweUnlinkRequestBody = Privy::Models::SiweUnlinkRequestBody

  SiwsAddressInput = Privy::Models::SiwsAddressInput

  SiwsAuthenticateRequestBody = Privy::Models::SiwsAuthenticateRequestBody

  SiwsInitInput = Privy::Models::SiwsInitInput

  SiwsInitRequestBody = Privy::Models::SiwsInitRequestBody

  SiwsInitResponseBody = Privy::Models::SiwsInitResponseBody

  SiwsInput = Privy::Models::SiwsInput

  SiwsLinkRequestBody = Privy::Models::SiwsLinkRequestBody

  SiwsNonce = Privy::Models::SiwsNonce

  SiwsUnlinkRequestBody = Privy::Models::SiwsUnlinkRequestBody

  SmartWalletConfiguration = Privy::Models::SmartWalletConfiguration

  SmartWalletConfigurationDisabled =
    Privy::Models::SmartWalletConfigurationDisabled

  SmartWalletConfigurationEnabled =
    Privy::Models::SmartWalletConfigurationEnabled

  SmartWalletConfigurationInput = Privy::Models::SmartWalletConfigurationInput

  SmartWalletConfigurationInputEnabled =
    Privy::Models::SmartWalletConfigurationInputEnabled

  SmartWalletNetworkConfiguration =
    Privy::Models::SmartWalletNetworkConfiguration

  SmartWalletNetworkConfigurationInput =
    Privy::Models::SmartWalletNetworkConfigurationInput

  SmartWalletSiweInput = Privy::Models::SmartWalletSiweInput

  SmartWalletType = Privy::Models::SmartWalletType

  SMSMfaMethod = Privy::Models::SMSMfaMethod

  SolanaProgramInstructionCondition =
    Privy::Models::SolanaProgramInstructionCondition

  SolanaRpcInput = Privy::Models::SolanaRpcInput

  SolanaRpcResponse = Privy::Models::SolanaRpcResponse

  SolanaSignAndSendTransactionRpcInput =
    Privy::Models::SolanaSignAndSendTransactionRpcInput

  SolanaSignAndSendTransactionRpcInputParams =
    Privy::Models::SolanaSignAndSendTransactionRpcInputParams

  SolanaSignAndSendTransactionRpcResponse =
    Privy::Models::SolanaSignAndSendTransactionRpcResponse

  SolanaSignAndSendTransactionRpcResponseData =
    Privy::Models::SolanaSignAndSendTransactionRpcResponseData

  SolanaSignMessageRpcInput = Privy::Models::SolanaSignMessageRpcInput

  SolanaSignMessageRpcInputParams =
    Privy::Models::SolanaSignMessageRpcInputParams

  SolanaSignMessageRpcResponse = Privy::Models::SolanaSignMessageRpcResponse

  SolanaSignMessageRpcResponseData =
    Privy::Models::SolanaSignMessageRpcResponseData

  SolanaSignTransactionRpcInput = Privy::Models::SolanaSignTransactionRpcInput

  SolanaSignTransactionRpcInputParams =
    Privy::Models::SolanaSignTransactionRpcInputParams

  SolanaSignTransactionRpcResponse =
    Privy::Models::SolanaSignTransactionRpcResponse

  SolanaSignTransactionRpcResponseData =
    Privy::Models::SolanaSignTransactionRpcResponseData

  SolanaSystemProgramInstructionCondition =
    Privy::Models::SolanaSystemProgramInstructionCondition

  SolanaTokenProgramInstructionCondition =
    Privy::Models::SolanaTokenProgramInstructionCondition

  SolanaWalletDerivationStrategy = Privy::Models::SolanaWalletDerivationStrategy

  SparkBalance = Privy::Models::SparkBalance

  SparkClaimStaticDepositRpcInput =
    Privy::Models::SparkClaimStaticDepositRpcInput

  SparkClaimStaticDepositRpcInputParams =
    Privy::Models::SparkClaimStaticDepositRpcInputParams

  SparkClaimStaticDepositRpcResponse =
    Privy::Models::SparkClaimStaticDepositRpcResponse

  SparkClaimStaticDepositRpcResponseData =
    Privy::Models::SparkClaimStaticDepositRpcResponseData

  SparkCreateLightningInvoiceRpcInput =
    Privy::Models::SparkCreateLightningInvoiceRpcInput

  SparkCreateLightningInvoiceRpcInputParams =
    Privy::Models::SparkCreateLightningInvoiceRpcInputParams

  SparkCreateLightningInvoiceRpcResponse =
    Privy::Models::SparkCreateLightningInvoiceRpcResponse

  SparkGetBalanceRpcInput = Privy::Models::SparkGetBalanceRpcInput

  SparkGetBalanceRpcResponse = Privy::Models::SparkGetBalanceRpcResponse

  SparkGetClaimStaticDepositQuoteRpcInput =
    Privy::Models::SparkGetClaimStaticDepositQuoteRpcInput

  SparkGetClaimStaticDepositQuoteRpcInputParams =
    Privy::Models::SparkGetClaimStaticDepositQuoteRpcInputParams

  SparkGetClaimStaticDepositQuoteRpcResponse =
    Privy::Models::SparkGetClaimStaticDepositQuoteRpcResponse

  SparkGetClaimStaticDepositQuoteRpcResponseData =
    Privy::Models::SparkGetClaimStaticDepositQuoteRpcResponseData

  SparkGetStaticDepositAddressRpcInput =
    Privy::Models::SparkGetStaticDepositAddressRpcInput

  SparkGetStaticDepositAddressRpcResponse =
    Privy::Models::SparkGetStaticDepositAddressRpcResponse

  SparkGetStaticDepositAddressRpcResponseData =
    Privy::Models::SparkGetStaticDepositAddressRpcResponseData

  SparkLightningFee = Privy::Models::SparkLightningFee

  SparkLightningReceiveRequest = Privy::Models::SparkLightningReceiveRequest

  SparkLightningSendRequest = Privy::Models::SparkLightningSendRequest

  SparkNetwork = Privy::Models::SparkNetwork

  SparkOutputSelectionStrategy = Privy::Models::SparkOutputSelectionStrategy

  SparkPayLightningInvoiceRpcInput =
    Privy::Models::SparkPayLightningInvoiceRpcInput

  SparkPayLightningInvoiceRpcInputParams =
    Privy::Models::SparkPayLightningInvoiceRpcInputParams

  SparkPayLightningInvoiceRpcResponse =
    Privy::Models::SparkPayLightningInvoiceRpcResponse

  SparkRpcInput = Privy::Models::SparkRpcInput

  SparkRpcResponse = Privy::Models::SparkRpcResponse

  SparkSigningKeyshare = Privy::Models::SparkSigningKeyshare

  SparkSignMessageWithIdentityKeyRpcInput =
    Privy::Models::SparkSignMessageWithIdentityKeyRpcInput

  SparkSignMessageWithIdentityKeyRpcInputParams =
    Privy::Models::SparkSignMessageWithIdentityKeyRpcInputParams

  SparkSignMessageWithIdentityKeyRpcResponse =
    Privy::Models::SparkSignMessageWithIdentityKeyRpcResponse

  SparkSignMessageWithIdentityKeyRpcResponseData =
    Privy::Models::SparkSignMessageWithIdentityKeyRpcResponseData

  SparkTokenBalance = Privy::Models::SparkTokenBalance

  SparkTransfer = Privy::Models::SparkTransfer

  SparkTransferLeaf = Privy::Models::SparkTransferLeaf

  SparkTransferRpcInput = Privy::Models::SparkTransferRpcInput

  SparkTransferRpcInputParams = Privy::Models::SparkTransferRpcInputParams

  SparkTransferRpcResponse = Privy::Models::SparkTransferRpcResponse

  SparkTransferTokensRpcInput = Privy::Models::SparkTransferTokensRpcInput

  SparkTransferTokensRpcInputParams =
    Privy::Models::SparkTransferTokensRpcInputParams

  SparkTransferTokensRpcResponse = Privy::Models::SparkTransferTokensRpcResponse

  SparkTransferTokensRpcResponseData =
    Privy::Models::SparkTransferTokensRpcResponseData

  SparkUserTokenMetadata = Privy::Models::SparkUserTokenMetadata

  SparkWalletLeaf = Privy::Models::SparkWalletLeaf

  StripeConsumerWallet = Privy::Models::StripeConsumerWallet

  StripeOnrampCheckoutInput = Privy::Models::StripeOnrampCheckoutInput

  StripeOnrampCheckoutResponse = Privy::Models::StripeOnrampCheckoutResponse

  StripePaymentToken = Privy::Models::StripePaymentToken

  StripeQuote = Privy::Models::StripeQuote

  StripeTransactionDetails = Privy::Models::StripeTransactionDetails

  StripeVerification = Privy::Models::StripeVerification

  SuccessResponse = Privy::Models::SuccessResponse

  SuiCommandName = Privy::Models::SuiCommandName

  SuiTransactionCommandCondition = Privy::Models::SuiTransactionCommandCondition

  SuiTransactionCommandOperator = Privy::Models::SuiTransactionCommandOperator

  SuiTransferObjectsCommandCondition =
    Privy::Models::SuiTransferObjectsCommandCondition

  SuiTransferObjectsCommandField = Privy::Models::SuiTransferObjectsCommandField

  SvmTransactionWalletActionStep = Privy::Models::SvmTransactionWalletActionStep

  SvmWalletActionStepStatus = Privy::Models::SvmWalletActionStepStatus

  SwapActionResponse = Privy::Models::SwapActionResponse

  SwapDestination = Privy::Models::SwapDestination

  SwapQuoteDestination = Privy::Models::SwapQuoteDestination

  SwapQuoteRequestBody = Privy::Models::SwapQuoteRequestBody

  SwapQuoteResponse = Privy::Models::SwapQuoteResponse

  SwapRequestBody = Privy::Models::SwapRequestBody

  SwapSource = Privy::Models::SwapSource

  SystemCondition = Privy::Models::SystemCondition

  TelegramAuthConfigSchema = Privy::Models::TelegramAuthConfigSchema

  TelegramAuthenticateInput = Privy::Models::TelegramAuthenticateInput

  TelegramAuthenticateRequestBody =
    Privy::Models::TelegramAuthenticateRequestBody

  TelegramAuthResult = Privy::Models::TelegramAuthResult

  TelegramLinkRequestBody = Privy::Models::TelegramLinkRequestBody

  TelegramUnlinkInput = Privy::Models::TelegramUnlinkInput

  TelegramUnlinkRequestBody = Privy::Models::TelegramUnlinkRequestBody

  TelegramWebAppData = Privy::Models::TelegramWebAppData

  TempoAaAuthorization = Privy::Models::TempoAaAuthorization

  TempoCall = Privy::Models::TempoCall

  TempoFeePayerSignature = Privy::Models::TempoFeePayerSignature

  TempoTransactionCondition = Privy::Models::TempoTransactionCondition

  TempoTransactionConditionField = Privy::Models::TempoTransactionConditionField

  TestAccount = Privy::Models::TestAccount

  TestAccountsResponse = Privy::Models::TestAccountsResponse

  TokenOutput = Privy::Models::TokenOutput

  TokenTransferDestination = Privy::Models::TokenTransferDestination

  TokenTransferSource = Privy::Models::TokenTransferSource

  TotalFeeConfigurationBps = Privy::Models::TotalFeeConfigurationBps

  TotpMfaMethod = Privy::Models::TotpMfaMethod

  Transaction = Privy::Models::Transaction

  TransactionBroadcastedWebhookPayload =
    Privy::Models::TransactionBroadcastedWebhookPayload

  TransactionConfirmedWebhookPayload =
    Privy::Models::TransactionConfirmedWebhookPayload

  TransactionDetail = Privy::Models::TransactionDetail

  TransactionExecutionRevertedWebhookPayload =
    Privy::Models::TransactionExecutionRevertedWebhookPayload

  TransactionFailedWebhookPayload =
    Privy::Models::TransactionFailedWebhookPayload

  TransactionGetParams = Privy::Models::TransactionGetParams

  TransactionList = Privy::Models::TransactionList

  TransactionProviderErrorWebhookPayload =
    Privy::Models::TransactionProviderErrorWebhookPayload

  TransactionReplacedWebhookPayload =
    Privy::Models::TransactionReplacedWebhookPayload

  TransactionScanningAssetDiff = Privy::Models::TransactionScanningAssetDiff

  TransactionScanningAssetInfo = Privy::Models::TransactionScanningAssetInfo

  TransactionScanningAssetValue = Privy::Models::TransactionScanningAssetValue

  TransactionScanningCalldata = Privy::Models::TransactionScanningCalldata

  TransactionScanningExposure = Privy::Models::TransactionScanningExposure

  TransactionScanningMetadata = Privy::Models::TransactionScanningMetadata

  TransactionScanningParams = Privy::Models::TransactionScanningParams

  TransactionScanningRequestBody = Privy::Models::TransactionScanningRequestBody

  TransactionScanningResponseBody =
    Privy::Models::TransactionScanningResponseBody

  TransactionScanningRpcRequest = Privy::Models::TransactionScanningRpcRequest

  TransactionScanningSimulationErrorResult =
    Privy::Models::TransactionScanningSimulationErrorResult

  TransactionScanningSimulationResult =
    Privy::Models::TransactionScanningSimulationResult

  TransactionScanningSimulationSuccessResult =
    Privy::Models::TransactionScanningSimulationSuccessResult

  TransactionScanningValidationErrorResult =
    Privy::Models::TransactionScanningValidationErrorResult

  TransactionScanningValidationResult =
    Privy::Models::TransactionScanningValidationResult

  TransactionScanningValidationSuccessResult =
    Privy::Models::TransactionScanningValidationSuccessResult

  TransactionStillPendingWebhookPayload =
    Privy::Models::TransactionStillPendingWebhookPayload

  TransactionTokenAddressInput = Privy::Models::TransactionTokenAddressInput

  TransferActionResponse = Privy::Models::TransferActionResponse

  TransferFarcasterInput = Privy::Models::TransferFarcasterInput

  TransferIntentRequestDetails = Privy::Models::TransferIntentRequestDetails

  TransferIntentResponse = Privy::Models::TransferIntentResponse

  TransferQuoteRequestBody = Privy::Models::TransferQuoteRequestBody

  TransferQuoteResponse = Privy::Models::TransferQuoteResponse

  TransferReceivedTransactionDetail =
    Privy::Models::TransferReceivedTransactionDetail

  TransferRequestBody = Privy::Models::TransferRequestBody

  TransferSentTransactionDetail = Privy::Models::TransferSentTransactionDetail

  TransferSiweInput = Privy::Models::TransferSiweInput

  TransferSiwsInput = Privy::Models::TransferSiwsInput

  TransferTelegramInput = Privy::Models::TransferTelegramInput

  TronCalldataCondition = Privy::Models::TronCalldataCondition

  TronTransactionCondition = Privy::Models::TronTransactionCondition

  TypedDataDomainInputParams =
    T.let(
      Privy::Models::TypedDataDomainInputParams,
      Privy::Internal::Type::Converter
    )

  TypedDataTypeFieldInput = Privy::Models::TypedDataTypeFieldInput

  TypedDataTypesInputParams =
    T.let(
      Privy::Models::TypedDataTypesInputParams,
      Privy::Internal::Type::Converter
    )

  UnlinkPasskeyInput = Privy::Models::UnlinkPasskeyInput

  UnsafeUnwrapWebhookEvent = Privy::Models::UnsafeUnwrapWebhookEvent

  UnsignedEthereumTransaction = Privy::Models::UnsignedEthereumTransaction

  UnsignedStandardEthereumTransaction =
    Privy::Models::UnsignedStandardEthereumTransaction

  UnsignedTempoTransaction = Privy::Models::UnsignedTempoTransaction

  UpdateAccountFromWalletIDsInput =
    Privy::Models::UpdateAccountFromWalletIDsInput

  UpdateAccountFromWalletsConfigurationInput =
    Privy::Models::UpdateAccountFromWalletsConfigurationInput

  UpdateAccountInput = Privy::Models::UpdateAccountInput

  UpdateConditionSetRequestBody = Privy::Models::UpdateConditionSetRequestBody

  UpdateOrganizationSecretSigningKeyInput =
    Privy::Models::UpdateOrganizationSecretSigningKeyInput

  User = Privy::Models::User

  UserAuthenticatedWebhookPayload =
    Privy::Models::UserAuthenticatedWebhookPayload

  UserBatchCreateInput = Privy::Models::UserBatchCreateInput

  UserCreatedWebhookPayload = Privy::Models::UserCreatedWebhookPayload

  UserCreateParams = Privy::Models::UserCreateParams

  UserDeleteParams = Privy::Models::UserDeleteParams

  UserGetByCustomAuthIDParams = Privy::Models::UserGetByCustomAuthIDParams

  UserGetByDiscordUsernameParams = Privy::Models::UserGetByDiscordUsernameParams

  UserGetByEmailAddressParams = Privy::Models::UserGetByEmailAddressParams

  UserGetByFarcasterIDParams = Privy::Models::UserGetByFarcasterIDParams

  UserGetByGitHubUsernameParams = Privy::Models::UserGetByGitHubUsernameParams

  UserGetByPhoneNumberParams = Privy::Models::UserGetByPhoneNumberParams

  UserGetBySmartWalletAddressParams =
    Privy::Models::UserGetBySmartWalletAddressParams

  UserGetByTelegramUserIDParams = Privy::Models::UserGetByTelegramUserIDParams

  UserGetByTelegramUsernameParams =
    Privy::Models::UserGetByTelegramUsernameParams

  UserGetByTwitterSubjectParams = Privy::Models::UserGetByTwitterSubjectParams

  UserGetByTwitterUsernameParams = Privy::Models::UserGetByTwitterUsernameParams

  UserGetByWalletAddressParams = Privy::Models::UserGetByWalletAddressParams

  UserGetParams = Privy::Models::UserGetParams

  UserInviteInput = Privy::Models::UserInviteInput

  UserLinkedAccountWebhookPayload =
    Privy::Models::UserLinkedAccountWebhookPayload

  UserListParams = Privy::Models::UserListParams

  UserOperationCompletedWebhookPayload =
    Privy::Models::UserOperationCompletedWebhookPayload

  UserOperationInput = Privy::Models::UserOperationInput

  UserOwnedRecoveryOption = Privy::Models::UserOwnedRecoveryOption

  UserPregenerateWalletsParams = Privy::Models::UserPregenerateWalletsParams

  UserSearchParams = Privy::Models::UserSearchParams

  UserSetCustomMetadataParams = Privy::Models::UserSetCustomMetadataParams

  UserTransferredAccountWebhookPayload =
    Privy::Models::UserTransferredAccountWebhookPayload

  UserUnlinkedAccountWebhookPayload =
    Privy::Models::UserUnlinkedAccountWebhookPayload

  UserUnlinkLinkedAccountParams = Privy::Models::UserUnlinkLinkedAccountParams

  UserUpdatedAccountWebhookPayload =
    Privy::Models::UserUpdatedAccountWebhookPayload

  UserWalletCreatedWebhookPayload =
    Privy::Models::UserWalletCreatedWebhookPayload

  UserWithIdentityToken = Privy::Models::UserWithIdentityToken

  Wallet = Privy::Models::Wallet

  WalletActionEarnDepositCreatedWebhookPayload =
    Privy::Models::WalletActionEarnDepositCreatedWebhookPayload

  WalletActionEarnDepositFailedWebhookPayload =
    Privy::Models::WalletActionEarnDepositFailedWebhookPayload

  WalletActionEarnDepositRejectedWebhookPayload =
    Privy::Models::WalletActionEarnDepositRejectedWebhookPayload

  WalletActionEarnDepositSucceededWebhookPayload =
    Privy::Models::WalletActionEarnDepositSucceededWebhookPayload

  WalletActionEarnIncentiveClaimCreatedWebhookPayload =
    Privy::Models::WalletActionEarnIncentiveClaimCreatedWebhookPayload

  WalletActionEarnIncentiveClaimFailedWebhookPayload =
    Privy::Models::WalletActionEarnIncentiveClaimFailedWebhookPayload

  WalletActionEarnIncentiveClaimRejectedWebhookPayload =
    Privy::Models::WalletActionEarnIncentiveClaimRejectedWebhookPayload

  WalletActionEarnIncentiveClaimSucceededWebhookPayload =
    Privy::Models::WalletActionEarnIncentiveClaimSucceededWebhookPayload

  WalletActionEarnWithdrawCreatedWebhookPayload =
    Privy::Models::WalletActionEarnWithdrawCreatedWebhookPayload

  WalletActionEarnWithdrawFailedWebhookPayload =
    Privy::Models::WalletActionEarnWithdrawFailedWebhookPayload

  WalletActionEarnWithdrawRejectedWebhookPayload =
    Privy::Models::WalletActionEarnWithdrawRejectedWebhookPayload

  WalletActionEarnWithdrawSucceededWebhookPayload =
    Privy::Models::WalletActionEarnWithdrawSucceededWebhookPayload

  WalletActionResponse = Privy::Models::WalletActionResponse

  WalletActionStatus = Privy::Models::WalletActionStatus

  WalletActionStep = Privy::Models::WalletActionStep

  WalletActionStepType = Privy::Models::WalletActionStepType

  WalletActionSwapCreatedWebhookPayload =
    Privy::Models::WalletActionSwapCreatedWebhookPayload

  WalletActionSwapFailedWebhookPayload =
    Privy::Models::WalletActionSwapFailedWebhookPayload

  WalletActionSwapRejectedWebhookPayload =
    Privy::Models::WalletActionSwapRejectedWebhookPayload

  WalletActionSwapSucceededWebhookPayload =
    Privy::Models::WalletActionSwapSucceededWebhookPayload

  WalletActionTransferCreatedWebhookPayload =
    Privy::Models::WalletActionTransferCreatedWebhookPayload

  WalletActionTransferFailedWebhookPayload =
    Privy::Models::WalletActionTransferFailedWebhookPayload

  WalletActionTransferRejectedWebhookPayload =
    Privy::Models::WalletActionTransferRejectedWebhookPayload

  WalletActionTransferSucceededWebhookPayload =
    Privy::Models::WalletActionTransferSucceededWebhookPayload

  WalletActionType = Privy::Models::WalletActionType

  WalletAdditionalSigner =
    T.let(
      Privy::Models::WalletAdditionalSigner,
      Privy::Internal::Type::Converter
    )

  WalletAdditionalSignerItem = Privy::Models::WalletAdditionalSignerItem

  WalletAPIRegisterAuthorizationKeyInput =
    Privy::Models::WalletAPIRegisterAuthorizationKeyInput

  WalletAPIRevokeAuthorizationKeyInput =
    Privy::Models::WalletAPIRevokeAuthorizationKeyInput

  WalletAsset = Privy::Models::WalletAsset

  WalletAuthenticateRequestBody = Privy::Models::WalletAuthenticateRequestBody

  WalletAuthenticateWithJwtParams =
    Privy::Models::WalletAuthenticateWithJwtParams

  WalletAuthenticateWithJwtResponse =
    Privy::Models::WalletAuthenticateWithJwtResponse

  WalletAuthorizationHeaders = Privy::Models::WalletAuthorizationHeaders

  WalletBatchCreateInput = Privy::Models::WalletBatchCreateInput

  WalletBatchCreateResponse = Privy::Models::WalletBatchCreateResponse

  WalletBatchCreateResult = Privy::Models::WalletBatchCreateResult

  WalletBatchItemInput = Privy::Models::WalletBatchItemInput

  WalletChainType = Privy::Models::WalletChainType

  WalletCreateParams = Privy::Models::WalletCreateParams

  WalletCreateWalletsWithRecoveryParams =
    Privy::Models::WalletCreateWalletsWithRecoveryParams

  WalletCreateWalletsWithRecoveryResponse =
    Privy::Models::WalletCreateWalletsWithRecoveryResponse

  WalletCreationAdditionalSignerItem =
    Privy::Models::WalletCreationAdditionalSignerItem

  WalletCreationInput = Privy::Models::WalletCreationInput

  WalletCustodian = Privy::Models::WalletCustodian

  WalletEntropyType = Privy::Models::WalletEntropyType

  WalletEthereumAsset = Privy::Models::WalletEthereumAsset

  WalletExportParams = Privy::Models::WalletExportParams

  WalletExportRequestBody = Privy::Models::WalletExportRequestBody

  WalletExportResponseBody = Privy::Models::WalletExportResponseBody

  WalletFundsAsset = Privy::Models::WalletFundsAsset

  WalletFundsErc20Asset = Privy::Models::WalletFundsErc20Asset

  WalletFundsNativeTokenAsset = Privy::Models::WalletFundsNativeTokenAsset

  WalletFundsSacAsset = Privy::Models::WalletFundsSacAsset

  WalletFundsSplAsset = Privy::Models::WalletFundsSplAsset

  WalletGetParams = Privy::Models::WalletGetParams

  WalletGetWalletByAddressParams = Privy::Models::WalletGetWalletByAddressParams

  WalletImportInitResponse = Privy::Models::WalletImportInitResponse

  WalletImportSupportedChains = Privy::Models::WalletImportSupportedChains

  WalletImportSupportedEntropyTypes =
    Privy::Models::WalletImportSupportedEntropyTypes

  WalletInitImportParams = Privy::Models::WalletInitImportParams

  WalletIntentResponse = Privy::Models::WalletIntentResponse

  WalletInviteInput = Privy::Models::WalletInviteInput

  WalletListParams = Privy::Models::WalletListParams

  WalletRawSignParams = Privy::Models::WalletRawSignParams

  WalletRecoveredWebhookPayload = Privy::Models::WalletRecoveredWebhookPayload

  WalletRecoverySetupWebhookPayload =
    Privy::Models::WalletRecoverySetupWebhookPayload

  WalletRevokeResponse = Privy::Models::WalletRevokeResponse

  WalletRpcParams = Privy::Models::WalletRpcParams

  WalletRpcRequestBody = Privy::Models::WalletRpcRequestBody

  WalletRpcResponse = Privy::Models::WalletRpcResponse

  Wallets = Privy::Models::Wallets

  WalletSolanaAsset = Privy::Models::WalletSolanaAsset

  WalletSubmitImportParams = Privy::Models::WalletSubmitImportParams

  WalletTransferParams = Privy::Models::WalletTransferParams

  WalletUpdateParams = Privy::Models::WalletUpdateParams

  WalletUpdateRequestBody = Privy::Models::WalletUpdateRequestBody

  WebhookPayload = Privy::Models::WebhookPayload

  WebhookUnsafeUnwrapParams = Privy::Models::WebhookUnsafeUnwrapParams

  YieldAuthorizationHeaders = Privy::Models::YieldAuthorizationHeaders

  YieldClaimConfirmedWebhookPayload =
    Privy::Models::YieldClaimConfirmedWebhookPayload

  YieldDepositConfirmedWebhookPayload =
    Privy::Models::YieldDepositConfirmedWebhookPayload

  YieldWithdrawConfirmedWebhookPayload =
    Privy::Models::YieldWithdrawConfirmedWebhookPayload
end
