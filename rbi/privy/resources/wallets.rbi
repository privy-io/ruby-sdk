# typed: strong

module Privy
  module Resources
    class Wallets
      sig { returns(Privy::Resources::Wallets::Earn) }
      attr_reader :earn

      # Operations related to wallets
      sig { returns(Privy::Resources::Wallets::Transactions) }
      attr_reader :transactions

      # Operations related to wallets
      sig { returns(Privy::Resources::Wallets::Balance) }
      attr_reader :balance

      # Operations for swapping tokens within wallets
      sig { returns(Privy::Resources::Wallets::Swap) }
      attr_reader :swap

      # Creates a new wallet on the requested chain and for the requested owner.
      sig do
        params(
          chain_type: Privy::WalletChainType::OrSymbol,
          additional_signers:
            T::Array[Privy::AdditionalSignerItemInput::OrHash],
          display_name: String,
          external_id: String,
          owner:
            T.nilable(
              T.any(
                Privy::OwnerInputUser::OrHash,
                Privy::OwnerInputPublicKey::OrHash
              )
            ),
          owner_id: T.nilable(String),
          policy_ids: T::Array[String],
          privy_idempotency_key: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Wallet)
      end
      def create(
        # Body param: The wallet chain types.
        chain_type:,
        # Body param: Additional signers for the wallet.
        additional_signers: nil,
        # Body param: A human-readable label for the wallet.
        display_name: nil,
        # Body param: A customer-provided identifier for mapping to external systems.
        # URL-safe characters only ([a-zA-Z0-9_-]), max 64 chars. Write-once: cannot be
        # changed after creation.
        external_id: nil,
        # Body param: The owner of the resource, specified as a Privy user ID, a P-256
        # public key, or null to remove the current owner.
        owner: nil,
        # Body param: The key quorum ID to set as the owner of the resource. If you
        # provide this, do not specify an owner.
        owner_id: nil,
        # Body param: An optional list of up to one policy ID to enforce on the wallet.
        policy_ids: nil,
        # Header param: Idempotency keys ensure API requests are executed only once within
        # a 24-hour window.
        privy_idempotency_key: nil,
        request_options: {}
      )
      end

      # Update a wallet's policies or authorization key configuration.
      sig do
        params(
          wallet_id: String,
          additional_signers:
            T::Array[Privy::AdditionalSignerItemInput::OrHash],
          display_name: T.nilable(String),
          owner:
            T.nilable(
              T.any(
                Privy::OwnerInputUser::OrHash,
                Privy::OwnerInputPublicKey::OrHash
              )
            ),
          owner_id: T.nilable(String),
          policy_ids: T::Array[String],
          privy_authorization_signature: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Wallet)
      end
      def update(
        # Path param: ID of the wallet.
        wallet_id,
        # Body param: Additional signers for the wallet.
        additional_signers: nil,
        # Body param: A human-readable label for the wallet. Set to null to clear.
        display_name: nil,
        # Body param: The owner of the resource, specified as a Privy user ID, a P-256
        # public key, or null to remove the current owner.
        owner: nil,
        # Body param: The key quorum ID to set as the owner of the resource. If you
        # provide this, do not specify an owner.
        owner_id: nil,
        # Body param: New policy IDs to enforce on the wallet. Currently, only one policy
        # is supported per wallet.
        policy_ids: nil,
        # Header param: Request authorization signature. If multiple signatures are
        # required, they should be comma separated.
        privy_authorization_signature: nil,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Get all wallets in your app.
      sig do
        params(
          authorization_key: String,
          chain_type: Privy::WalletChainType::OrSymbol,
          cursor: String,
          external_id: String,
          limit: T.nilable(Float),
          user_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Internal::Cursor[Privy::Wallet])
      end
      def list(
        # Filter wallets by authorization public key. Returns wallets owned by key quorums
        # that include the specified P-256 public key (base64-encoded DER format). Cannot
        # be used together with user_id.
        authorization_key: nil,
        # The wallet chain types.
        chain_type: nil,
        cursor: nil,
        # Filter wallets by external ID.
        external_id: nil,
        limit: nil,
        # Filter wallets by user ID. Cannot be used together with authorization_key.
        user_id: nil,
        request_options: {}
      )
      end

      # Initialize a wallet import. Complete by submitting the import.
      sig do
        params(
          body:
            T.any(
              Privy::HDInitInput::OrHash,
              Privy::PrivateKeyInitInput::OrHash
            ),
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Models::WalletInitImportResponse)
      end
      def _init_import(
        # The input for HD wallets.
        body:,
        request_options: {}
      )
      end

      # Submit a wallet import request.
      sig do
        params(
          wallet:
            T.any(
              Privy::HDSubmitInput::OrHash,
              Privy::PrivateKeySubmitInput::OrHash
            ),
          additional_signers:
            T::Array[Privy::AdditionalSignerItemInput::OrHash],
          display_name: String,
          external_id: String,
          owner:
            T.nilable(
              T.any(
                Privy::OwnerInputUser::OrHash,
                Privy::OwnerInputPublicKey::OrHash
              )
            ),
          owner_id: T.nilable(String),
          policy_ids: T::Array[String],
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Wallet)
      end
      def _submit_import(
        # The submission input for importing an HD wallet.
        wallet:,
        # Additional signers for the wallet.
        additional_signers: nil,
        # A human-readable label for the wallet.
        display_name: nil,
        # A customer-provided identifier for mapping to external systems. URL-safe
        # characters only ([a-zA-Z0-9_-]), max 64 chars. Write-once: cannot be changed
        # after creation.
        external_id: nil,
        # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
        # null to remove the current owner.
        owner: nil,
        # The key quorum ID to set as the owner of the resource. If you provide this, do
        # not specify an owner.
        owner_id: nil,
        # An optional list of up to one policy ID to enforce on the wallet.
        policy_ids: nil,
        request_options: {}
      )
      end

      # Transfer tokens from a wallet to a destination address.
      sig do
        params(
          wallet_id: String,
          destination: Privy::TokenTransferDestination::OrHash,
          source:
            T.any(
              Privy::NamedTokenTransferSource::OrHash,
              Privy::CustomTokenTransferSource::OrHash
            ),
          amount_type: Privy::AmountType::OrSymbol,
          fee_configuration: Privy::FeeConfiguration::OrHash,
          slippage_bps: Integer,
          privy_authorization_signature: String,
          privy_idempotency_key: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::TransferActionResponse)
      end
      def _transfer(
        # Path param: ID of the wallet.
        wallet_id,
        # Body param: The destination address for a token transfer. Optionally specify a
        # different asset or chain for cross-asset or cross-chain transfers.
        destination:,
        # Body param: The source asset, amount, and chain for a token transfer. Specify
        # either `asset` (named) or `asset_address` (custom), not both.
        source:,
        # Body param: Whether the amount refers to the input token or output token.
        amount_type: nil,
        # Body param: Total fees assessed on a transfer, in BPS
        fee_configuration: nil,
        # Body param: Maximum allowed slippage in basis points (1 bps = 0.01%).
        slippage_bps: nil,
        # Header param: Request authorization signature. If multiple signatures are
        # required, they should be comma separated.
        privy_authorization_signature: nil,
        # Header param: Idempotency keys ensure API requests are executed only once within
        # a 24-hour window.
        privy_idempotency_key: nil,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Exchange a user JWT for a session key authorized to act on the user's wallets.
      # Returns the encrypted authorization key and the list of wallets it can access.
      sig do
        params(
          encryption_type:
            Privy::WalletAuthenticateRequestBody::EncryptionType::OrSymbol,
          recipient_public_key: String,
          user_jwt: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::WalletAuthenticateWithJwtResponse::Variants)
      end
      def authenticate_with_jwt(
        # The encryption type for the authentication response. Currently only supports
        # HPKE.
        encryption_type:,
        # The public key of your ECDH keypair, in base64-encoded, SPKI-format, whose
        # private key will be able to decrypt the session key.
        recipient_public_key:,
        # The user's JWT, to be used to authenticate the user.
        user_jwt:,
        request_options: {}
      )
      end

      # Create one or more wallets associated with a recovery user, so the user can
      # later regain wallet access via the linked accounts. Deprecated; prefer the
      # standard wallet creation flow combined with a separate recovery setup.
      sig do
        params(
          primary_signer:
            Privy::WalletCreateWalletsWithRecoveryParams::PrimarySigner::OrHash,
          recovery_user:
            Privy::WalletCreateWalletsWithRecoveryParams::RecoveryUser::OrHash,
          wallets:
            T::Array[
              Privy::WalletCreateWalletsWithRecoveryParams::Wallet::OrHash
            ],
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::WalletCreateWalletsWithRecoveryResponse)
      end
      def create_wallets_with_recovery(
        primary_signer:,
        recovery_user:,
        wallets:,
        request_options: {}
      )
      end

      # Export a wallet's private key
      sig do
        params(
          wallet_id: String,
          encryption_type: Privy::HpkeEncryption::OrSymbol,
          recipient_public_key: String,
          export_seed_phrase: T::Boolean,
          privy_authorization_signature: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::WalletExportResponseBody)
      end
      def export(
        # Path param: ID of the wallet.
        wallet_id,
        # Body param: The encryption type of the wallet to import. Currently only supports
        # `HPKE`.
        encryption_type:,
        # Body param: The base64-encoded encryption public key to encrypt the wallet
        # private key with.
        recipient_public_key:,
        # Body param
        export_seed_phrase: nil,
        # Header param: Request authorization signature. If multiple signatures are
        # required, they should be comma separated.
        privy_authorization_signature: nil,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Get a wallet by wallet ID.
      sig do
        params(
          wallet_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Wallet)
      end
      def get(
        # ID of the wallet.
        wallet_id,
        request_options: {}
      )
      end

      # Look up a wallet by its blockchain address. Returns the wallet object if found.
      sig do
        params(
          address: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Wallet)
      end
      def get_wallet_by_address(
        # A blockchain wallet address (Ethereum or Solana).
        address:,
        request_options: {}
      )
      end

      # Sign a message with a wallet by wallet ID.
      sig do
        params(
          wallet_id: String,
          params:
            T.any(
              Privy::RawSignHashParams::OrHash,
              Privy::RawSignBytesParams::OrHash
            ),
          privy_authorization_signature: String,
          privy_idempotency_key: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::RawSignResponse)
      end
      def raw_sign(
        # Path param: ID of the wallet.
        wallet_id,
        # Body param: Parameters for the `raw_sign` RPC.
        params:,
        # Header param: Request authorization signature. If multiple signatures are
        # required, they should be comma separated.
        privy_authorization_signature: nil,
        # Header param: Idempotency keys ensure API requests are executed only once within
        # a 24-hour window.
        privy_idempotency_key: nil,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Sign a message or transaction with a wallet by wallet ID.
      sig do
        params(
          wallet_id: String,
          wallet_rpc_request_body:
            T.any(
              Privy::EthereumSignTransactionRpcInput::OrHash,
              Privy::EthereumSendTransactionRpcInput::OrHash,
              Privy::EthereumPersonalSignRpcInput::OrHash,
              Privy::EthereumSignTypedDataRpcInput::OrHash,
              Privy::EthereumSecp256k1SignRpcInput::OrHash,
              Privy::EthereumSign7702AuthorizationRpcInput::OrHash,
              Privy::EthereumSignUserOperationRpcInput::OrHash,
              Privy::EthereumSendCallsRpcInput::OrHash,
              Privy::SolanaSignTransactionRpcInput::OrHash,
              Privy::SolanaSignAndSendTransactionRpcInput::OrHash,
              Privy::SolanaSignMessageRpcInput::OrHash,
              Privy::SparkTransferRpcInput::OrHash,
              Privy::SparkGetBalanceRpcInput::OrHash,
              Privy::SparkTransferTokensRpcInput::OrHash,
              Privy::SparkGetStaticDepositAddressRpcInput::OrHash,
              Privy::SparkGetClaimStaticDepositQuoteRpcInput::OrHash,
              Privy::SparkClaimStaticDepositRpcInput::OrHash,
              Privy::SparkCreateLightningInvoiceRpcInput::OrHash,
              Privy::SparkPayLightningInvoiceRpcInput::OrHash,
              Privy::SparkSignMessageWithIdentityKeyRpcInput::OrHash,
              Privy::ExportPrivateKeyRpcInput::OrHash,
              Privy::ExportSeedPhraseRpcInput::OrHash
            ),
          privy_authorization_signature: String,
          privy_idempotency_key: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::WalletRpcResponse::Variants)
      end
      def rpc(
        # Path param: ID of the wallet.
        wallet_id,
        # Body param: Request body for wallet RPC operations, discriminated by method.
        wallet_rpc_request_body:,
        # Header param: Request authorization signature. If multiple signatures are
        # required, they should be comma separated.
        privy_authorization_signature: nil,
        # Header param: Idempotency keys ensure API requests are executed only once within
        # a 24-hour window.
        privy_idempotency_key: nil,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Privy::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
