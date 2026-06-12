# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      # Operations related to wallet actions
      # @return [Privy::Resources::Wallets::Actions]
      attr_reader :actions

      # @return [Privy::Resources::Wallets::Earn]
      attr_reader :earn

      # Operations related to wallets
      # @return [Privy::Resources::Wallets::Transactions]
      attr_reader :transactions

      # Operations related to wallets
      # @return [Privy::Resources::Wallets::Balance]
      attr_reader :balance

      # Operations for swapping tokens within wallets
      # @return [Privy::Resources::Wallets::Swap]
      attr_reader :swap

      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletCreateParams} for more details.
      #
      # Creates a new wallet on the requested chain and for the requested owner.
      #
      # @overload create(chain_type:, additional_signers: nil, display_name: nil, external_id: nil, owner: nil, owner_id: nil, policy_ids: nil, privy_idempotency_key: nil, request_options: {})
      #
      # @param chain_type [Symbol, Privy::Models::WalletChainType] Body param: The wallet chain types.
      #
      # @param additional_signers [Array<Privy::Models::AdditionalSignerItemInput>] Body param: Additional signers for the wallet.
      #
      # @param display_name [String] Body param: A human-readable label for the wallet.
      #
      # @param external_id [String] Body param: A customer-provided identifier for mapping to external systems. URL-
      #
      # @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] Body param: The owner of the resource, specified as a Privy user ID, a P-256 pub
      #
      # @param owner_id [String, nil] Body param: The key quorum ID to set as the owner of the resource. If you provid
      #
      # @param policy_ids [Array<String>] Body param: An optional list of up to one policy ID to enforce on the wallet.
      #
      # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Wallet]
      #
      # @see Privy::Models::WalletCreateParams
      def create(params)
        parsed, options = Privy::WalletCreateParams.dump_request(params)
        header_params = {privy_idempotency_key: "privy-idempotency-key"}
        @client.request(
          method: :post,
          path: "v1/wallets",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::Wallet,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletUpdateParams} for more details.
      #
      # Update a wallet's policies or authorization key configuration.
      #
      # @overload update(wallet_id, additional_signers: nil, display_name: nil, owner: nil, owner_id: nil, policy_ids: nil, privy_authorization_signature: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param wallet_id [String] Path param: ID of the wallet.
      #
      # @param additional_signers [Array<Privy::Models::AdditionalSignerItemInput>] Body param: Additional signers for the wallet.
      #
      # @param display_name [String, nil] Body param: A human-readable label for the wallet. Set to null to clear.
      #
      # @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] Body param: The owner of the resource, specified as a Privy user ID, a P-256 pub
      #
      # @param owner_id [String, nil] Body param: The key quorum ID to set as the owner of the resource. If you provid
      #
      # @param policy_ids [Array<String>] Body param: New policy IDs to enforce on the wallet. Currently, only one policy
      #
      # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Wallet]
      #
      # @see Privy::Models::WalletUpdateParams
      def update(wallet_id, params = {})
        parsed, options = Privy::WalletUpdateParams.dump_request(params)
        header_params =
          {
            privy_authorization_signature: "privy-authorization-signature",
            privy_request_expiry: "privy-request-expiry"
          }
        @client.request(
          method: :patch,
          path: ["v1/wallets/%1$s", wallet_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::Wallet,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletListParams} for more details.
      #
      # Get all wallets in your app.
      #
      # @overload list(authorization_key: nil, chain_type: nil, cursor: nil, external_id: nil, include_archived: nil, limit: nil, user_id: nil, request_options: {})
      #
      # @param authorization_key [String] Filter wallets by authorization public key. Returns wallets owned by key quorums
      #
      # @param chain_type [Symbol, Privy::Models::WalletChainType] The wallet chain types.
      #
      # @param cursor [String]
      #
      # @param external_id [String] Filter wallets by external ID.
      #
      # @param include_archived [Boolean] Include archived wallets in lookup. Defaults to false.
      #
      # @param limit [Float, nil]
      #
      # @param user_id [String] Filter wallets by user ID. Cannot be used together with authorization_key.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Internal::Cursor<Privy::Models::Wallet>]
      #
      # @see Privy::Models::WalletListParams
      def list(params = {})
        parsed, options = Privy::WalletListParams.dump_request(params)
        query = Privy::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/wallets",
          query: query,
          page: Privy::Internal::Cursor,
          model: Privy::Wallet,
          options: options
        )
      end

      # Initialize a wallet import. Complete by submitting the import.
      #
      # @overload _init_import(body:, request_options: {})
      #
      # @param body [Privy::Models::HDInitInput, Privy::Models::PrivateKeyInitInput] The input for HD wallets.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::WalletInitImportResponse]
      #
      # @see Privy::Models::WalletInitImportParams
      def _init_import(params)
        parsed, options = Privy::WalletInitImportParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/wallets/import/init",
          body: parsed[:body],
          model: Privy::Models::WalletInitImportResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletSubmitImportParams} for more details.
      #
      # Submit a wallet import request.
      #
      # @overload _submit_import(wallet:, additional_signers: nil, display_name: nil, external_id: nil, owner: nil, owner_id: nil, policy_ids: nil, request_options: {})
      #
      # @param wallet [Privy::Models::HDSubmitInput, Privy::Models::PrivateKeySubmitInput] The submission input for importing an HD wallet.
      #
      # @param additional_signers [Array<Privy::Models::AdditionalSignerItemInput>] Additional signers for the wallet.
      #
      # @param display_name [String] A human-readable label for the wallet.
      #
      # @param external_id [String] A customer-provided identifier for mapping to external systems. URL-safe charact
      #
      # @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #
      # @param owner_id [String, nil] The key quorum ID to set as the owner of the resource. If you provide this, do n
      #
      # @param policy_ids [Array<String>] An optional list of up to one policy ID to enforce on the wallet.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Wallet]
      #
      # @see Privy::Models::WalletSubmitImportParams
      def _submit_import(params)
        parsed, options = Privy::WalletSubmitImportParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/wallets/import/submit",
          body: parsed,
          model: Privy::Wallet,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletTransferParams} for more details.
      #
      # Transfer tokens from a wallet to a destination address.
      #
      # @overload _transfer(wallet_id, destination:, source:, amount_type: nil, fee_configuration: nil, slippage_bps: nil, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param wallet_id [String] Path param: ID of the wallet.
      #
      # @param destination [Privy::Models::TokenTransferDestination] Body param: The destination address for a token transfer. Optionally specify a d
      #
      # @param source [Privy::Models::NamedTokenTransferSource, Privy::Models::CustomTokenTransferSource] Body param: The source asset, amount, and chain for a token transfer. Specify ei
      #
      # @param amount_type [Symbol, Privy::Models::AmountType] Body param: Whether the amount refers to the input token or output token.
      #
      # @param fee_configuration [Privy::Models::FeeConfiguration] Body param: Total fees assessed on a transfer, in BPS
      #
      # @param slippage_bps [Integer] Body param: Maximum allowed slippage in basis points (1 bps = 0.01%). Only appli
      #
      # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
      #
      # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::TransferActionResponse]
      #
      # @see Privy::Models::WalletTransferParams
      def _transfer(wallet_id, params)
        parsed, options = Privy::WalletTransferParams.dump_request(params)
        header_params =
          {
            privy_authorization_signature: "privy-authorization-signature",
            privy_idempotency_key: "privy-idempotency-key",
            privy_request_expiry: "privy-request-expiry"
          }
        @client.request(
          method: :post,
          path: ["v1/wallets/%1$s/transfer", wallet_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::TransferActionResponse,
          options: options
        )
      end

      # Archives a wallet, preventing it from being used in any write or signing
      # operations. Archived wallets are hidden from list endpoints by default. Returns
      # 404 if the wallet does not exist or is already archived.
      #
      # @overload archive(wallet_id, request_options: {})
      #
      # @param wallet_id [String] ID of the wallet.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Wallet]
      #
      # @see Privy::Models::WalletArchiveParams
      def archive(wallet_id, params = {})
        @client.request(
          method: :post,
          path: ["v1/wallets/%1$s/archive", wallet_id],
          model: Privy::Wallet,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletAuthenticateWithJwtParams} for more details.
      #
      # Exchange a user JWT for a session key authorized to act on the user's wallets.
      # Returns the encrypted authorization key and the list of wallets it can access.
      #
      # @overload authenticate_with_jwt(encryption_type:, recipient_public_key:, user_jwt:, request_options: {})
      #
      # @param encryption_type [Symbol, Privy::Models::WalletAuthenticateRequestBody::EncryptionType] The encryption type for the authentication response. Currently only supports HPK
      #
      # @param recipient_public_key [String] The public key of your ECDH keypair, in base64-encoded, SPKI-format, whose priva
      #
      # @param user_jwt [String] The user's JWT, to be used to authenticate the user.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::EncryptedWalletAuthenticateResponse, Privy::Models::RawWalletAuthenticateResponse]
      #
      # @see Privy::Models::WalletAuthenticateWithJwtParams
      def authenticate_with_jwt(params)
        parsed, options = Privy::WalletAuthenticateWithJwtParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/wallets/authenticate",
          body: parsed,
          model: Privy::WalletAuthenticateWithJwtResponse,
          options: options
        )
      end

      # Creates multiple wallets in a single request. Each wallet creation is
      # independent; failures for one wallet do not affect others. Maximum batch size is
      # 100 wallets.
      #
      # @overload create_batch(wallets:, request_options: {})
      #
      # @param wallets [Array<Privy::Models::WalletBatchItemInput>] Array of wallet creation requests. Minimum 1, maximum 100.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::WalletBatchCreateResponse]
      #
      # @see Privy::Models::WalletCreateBatchParams
      def create_batch(params)
        parsed, options = Privy::WalletCreateBatchParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/wallets/batch",
          body: parsed,
          model: Privy::WalletBatchCreateResponse,
          options: options
        )
      end

      # @deprecated
      #
      # Create one or more wallets associated with a recovery user, so the user can
      # later regain wallet access via the linked accounts. Deprecated; prefer the
      # standard wallet creation flow combined with a separate recovery setup.
      #
      # @overload create_wallets_with_recovery(primary_signer:, recovery_user:, wallets:, request_options: {})
      #
      # @param primary_signer [Privy::Models::WalletCreateWalletsWithRecoveryParams::PrimarySigner]
      # @param recovery_user [Privy::Models::WalletCreateWalletsWithRecoveryParams::RecoveryUser]
      # @param wallets [Array<Privy::Models::WalletCreateWalletsWithRecoveryParams::Wallet>]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::WalletCreateWalletsWithRecoveryResponse]
      #
      # @see Privy::Models::WalletCreateWalletsWithRecoveryParams
      def create_wallets_with_recovery(params)
        parsed, options = Privy::WalletCreateWalletsWithRecoveryParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/wallets_with_recovery",
          body: parsed,
          model: Privy::WalletCreateWalletsWithRecoveryResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletExportParams} for more details.
      #
      # Export a wallet's private key
      #
      # @overload export(wallet_id, encryption_type:, recipient_public_key:, export_seed_phrase: nil, privy_authorization_signature: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param wallet_id [String] Path param: ID of the wallet.
      #
      # @param encryption_type [Symbol, Privy::Models::HpkeEncryption] Body param: The encryption type of the wallet to import. Currently only supports
      #
      # @param recipient_public_key [String] Body param: The base64-encoded encryption public key to encrypt the wallet priva
      #
      # @param export_seed_phrase [Boolean] Body param
      #
      # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::WalletExportResponseBody]
      #
      # @see Privy::Models::WalletExportParams
      def export(wallet_id, params)
        parsed, options = Privy::WalletExportParams.dump_request(params)
        header_params =
          {
            privy_authorization_signature: "privy-authorization-signature",
            privy_request_expiry: "privy-request-expiry"
          }
        @client.request(
          method: :post,
          path: ["v1/wallets/%1$s/export", wallet_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::WalletExportResponseBody,
          options: options
        )
      end

      # Get a wallet by wallet ID.
      #
      # @overload get(wallet_id, include_archived: nil, request_options: {})
      #
      # @param wallet_id [String] ID of the wallet.
      #
      # @param include_archived [Boolean] Include archived wallets in lookup. Defaults to false.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Wallet]
      #
      # @see Privy::Models::WalletGetParams
      def get(wallet_id, params = {})
        parsed, options = Privy::WalletGetParams.dump_request(params)
        query = Privy::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["v1/wallets/%1$s", wallet_id],
          query: query,
          model: Privy::Wallet,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletGetWalletByAddressParams} for more details.
      #
      # Look up a wallet by its blockchain address. Returns the wallet object if found.
      #
      # @overload get_wallet_by_address(address:, include_archived: nil, request_options: {})
      #
      # @param address [String] A blockchain wallet address (Ethereum or Solana).
      #
      # @param include_archived [Boolean] Include archived wallets in lookup. Defaults to false (archived wallets return 4
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Wallet]
      #
      # @see Privy::Models::WalletGetWalletByAddressParams
      def get_wallet_by_address(params)
        parsed, options = Privy::WalletGetWalletByAddressParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/wallets/address",
          body: parsed,
          model: Privy::Wallet,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletRawSignParams} for more details.
      #
      # Sign a message with a wallet by wallet ID.
      #
      # @overload raw_sign(wallet_id, params:, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param wallet_id [String] Path param: ID of the wallet.
      #
      # @param params [Privy::Models::RawSignHashParams, Privy::Models::RawSignBytesParams] Body param: Parameters for the `raw_sign` RPC.
      #
      # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
      #
      # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::RawSignResponse]
      #
      # @see Privy::Models::WalletRawSignParams
      def raw_sign(wallet_id, params)
        parsed, options = Privy::WalletRawSignParams.dump_request(params)
        header_params =
          {
            privy_authorization_signature: "privy-authorization-signature",
            privy_idempotency_key: "privy-idempotency-key",
            privy_request_expiry: "privy-request-expiry"
          }
        @client.request(
          method: :post,
          path: ["v1/wallets/%1$s/raw_sign", wallet_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::RawSignResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletRpcParams} for more details.
      #
      # Sign a message or transaction with a wallet by wallet ID.
      #
      # @overload rpc(wallet_id, wallet_rpc_request_body:, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param wallet_id [String] Path param: ID of the wallet.
      #
      # @param wallet_rpc_request_body [Privy::Models::EthereumSignTransactionRpcInput, Privy::Models::EthereumSendTransactionRpcInput, Privy::Models::EthereumPersonalSignRpcInput, Privy::Models::EthereumSignTypedDataRpcInput, Privy::Models::EthereumSecp256k1SignRpcInput, Privy::Models::EthereumSign7702AuthorizationRpcInput, Privy::Models::EthereumSignUserOperationRpcInput, Privy::Models::EthereumSendCallsRpcInput, Privy::Models::SolanaSignTransactionRpcInput, Privy::Models::SolanaSignAndSendTransactionRpcInput, Privy::Models::SolanaSignMessageRpcInput, Privy::Models::SparkTransferRpcInput, Privy::Models::SparkGetBalanceRpcInput, Privy::Models::SparkTransferTokensRpcInput, Privy::Models::SparkGetStaticDepositAddressRpcInput, Privy::Models::SparkGetClaimStaticDepositQuoteRpcInput, Privy::Models::SparkClaimStaticDepositRpcInput, Privy::Models::SparkCreateLightningInvoiceRpcInput, Privy::Models::SparkPayLightningInvoiceRpcInput, Privy::Models::SparkSignMessageWithIdentityKeyRpcInput, Privy::Models::ExportPrivateKeyRpcInput, Privy::Models::ExportSeedPhraseRpcInput] Body param: Request body for wallet RPC operations, discriminated by method.
      #
      # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
      #
      # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::EthereumPersonalSignRpcResponse, Privy::Models::EthereumSignTypedDataRpcResponse, Privy::Models::EthereumSignTransactionRpcResponse, Privy::Models::EthereumSendTransactionRpcResponse, Privy::Models::EthereumSignUserOperationRpcResponse, Privy::Models::EthereumSign7702AuthorizationRpcResponse, Privy::Models::EthereumSecp256k1SignRpcResponse, Privy::Models::EthereumSendCallsRpcResponse, Privy::Models::SolanaSignMessageRpcResponse, Privy::Models::SolanaSignTransactionRpcResponse, Privy::Models::SolanaSignAndSendTransactionRpcResponse, Privy::Models::SparkTransferRpcResponse, Privy::Models::SparkGetBalanceRpcResponse, Privy::Models::SparkTransferTokensRpcResponse, Privy::Models::SparkGetStaticDepositAddressRpcResponse, Privy::Models::SparkGetClaimStaticDepositQuoteRpcResponse, Privy::Models::SparkClaimStaticDepositRpcResponse, Privy::Models::SparkCreateLightningInvoiceRpcResponse, Privy::Models::SparkPayLightningInvoiceRpcResponse, Privy::Models::SparkSignMessageWithIdentityKeyRpcResponse, Privy::Models::ExportPrivateKeyRpcResponse, Privy::Models::ExportSeedPhraseRpcResponse]
      #
      # @see Privy::Models::WalletRpcParams
      def rpc(wallet_id, params)
        parsed, options = Privy::WalletRpcParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/wallets/%1$s/rpc", wallet_id],
          headers: parsed.except(:wallet_rpc_request_body).transform_keys(
            privy_authorization_signature: "privy-authorization-signature",
            privy_idempotency_key: "privy-idempotency-key",
            privy_request_expiry: "privy-request-expiry"
          ),
          body: parsed[:wallet_rpc_request_body],
          model: Privy::WalletRpcResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Privy::Client]
      def initialize(client:)
        @client = client
        @actions = Privy::Resources::Wallets::Actions.new(client: client)
        @earn = Privy::Resources::Wallets::Earn.new(client: client)
        @transactions = Privy::Resources::Wallets::Transactions.new(client: client)
        @balance = Privy::Resources::Wallets::Balance.new(client: client)
        @swap = Privy::Resources::Wallets::Swap.new(client: client)
      end
    end
  end
end
