# typed: strong

module Privy
  class Client < Privy::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    ENVIRONMENTS =
      T.let(
        {
          production: "https://api.privy.io",
          staging: "https://api.staging.privy.io"
        },
        T::Hash[Symbol, String]
      )

    # App secret authentication.
    sig { returns(String) }
    attr_reader :app_id

    # App secret authentication.
    sig { returns(String) }
    attr_reader :app_secret

    sig { returns(Privy::Resources::Wallets) }
    attr_reader :wallets

    # Operations related to users
    sig { returns(Privy::Resources::Users) }
    attr_reader :users

    # Operations related to policies
    sig { returns(Privy::Resources::Policies) }
    attr_reader :policies

    # Operations related to transactions
    sig { returns(Privy::Resources::Transactions) }
    attr_reader :transactions

    # Operations related to key quorums
    sig { returns(Privy::Resources::KeyQuorums) }
    attr_reader :key_quorums

    # Operations related to authorization intents for wallet actions
    sig { returns(Privy::Resources::Intents) }
    attr_reader :intents

    # Operations related to app settings and allowlist management
    sig { returns(Privy::Resources::Apps) }
    attr_reader :apps

    sig { returns(Privy::Resources::Webhooks) }
    attr_reader :webhooks

    sig { returns(Privy::Resources::Accounts) }
    attr_reader :accounts

    sig { returns(Privy::Resources::Aggregations) }
    attr_reader :aggregations

    sig { returns(Privy::Resources::EmbeddedWallets) }
    attr_reader :embedded_wallets

    sig { returns(Privy::Resources::Analytics) }
    attr_reader :analytics

    sig { returns(Privy::Resources::ClientAuth) }
    attr_reader :client_auth

    sig { returns(Privy::Resources::Shared) }
    attr_reader :shared

    sig { returns(Privy::Resources::Onramps) }
    attr_reader :onramps

    sig { returns(Privy::Resources::Funding) }
    attr_reader :funding

    sig { returns(Privy::Resources::Organizations) }
    attr_reader :organizations

    sig { returns(Privy::Resources::CrossApp) }
    attr_reader :cross_app

    sig { returns(Privy::Resources::OAuth) }
    attr_reader :oauth

    sig { returns(Privy::Resources::WalletActions) }
    attr_reader :wallet_actions

    sig { returns(Privy::Resources::Yield) }
    attr_reader :yield_

    sig { returns(Privy::Resources::KrakenEmbed) }
    attr_reader :kraken_embed

    sig { returns(Privy::Resources::Swaps) }
    attr_reader :swaps

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        app_id: T.nilable(String),
        app_secret: T.nilable(String),
        environment: T.nilable(T.any(Symbol, String)),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # App secret authentication. Defaults to `ENV["PRIVY_APP_ID"]`
      app_id: ENV["PRIVY_APP_ID"],
      # App secret authentication. Defaults to `ENV["PRIVY_APP_SECRET"]`
      app_secret: ENV["PRIVY_APP_SECRET"],
      # Specifies the environment to use for the API.
      #
      # Each environment maps to a different base URL:
      #
      # - `production` corresponds to `https://api.privy.io`
      # - `staging` corresponds to `https://api.staging.privy.io`
      environment: nil,
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["PRIVY_API_BASE_URL"]`
      base_url: ENV["PRIVY_API_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Privy::Client::DEFAULT_MAX_RETRIES,
      timeout: Privy::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Privy::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Privy::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
