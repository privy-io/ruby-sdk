# frozen_string_literal: true

module Privy
  class Client < Privy::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # rubocop:disable Style/MutableConstant
    # @type [Hash{Symbol=>String}]
    ENVIRONMENTS = {production: "https://api.privy.io", staging: "https://api.staging.privy.io"}
    # rubocop:enable Style/MutableConstant

    # App secret authentication.
    # @return [String]
    attr_reader :app_id

    # App secret authentication.
    # @return [String]
    attr_reader :app_secret

    # @return [Privy::Resources::Wallets]
    attr_reader :wallets

    # Operations related to users
    # @return [Privy::Resources::Users]
    attr_reader :users

    # Operations related to policies
    # @return [Privy::Resources::Policies]
    attr_reader :policies

    # Operations related to transactions
    # @return [Privy::Resources::Transactions]
    attr_reader :transactions

    # Operations related to key quorums
    # @return [Privy::Resources::KeyQuorums]
    attr_reader :key_quorums

    # @return [Privy::Resources::Intents]
    attr_reader :intents

    # Operations related to app settings and allowlist management
    # @return [Privy::Resources::Apps]
    attr_reader :apps

    # @return [Privy::Resources::Webhooks]
    attr_reader :webhooks

    # @return [Privy::Resources::Accounts]
    attr_reader :accounts

    # @return [Privy::Resources::Aggregations]
    attr_reader :aggregations

    # @return [Privy::Resources::EmbeddedWallets]
    attr_reader :embedded_wallets

    # @return [Privy::Resources::Analytics]
    attr_reader :analytics

    # @return [Privy::Resources::ClientAuth]
    attr_reader :client_auth

    # @return [Privy::Resources::Onramps]
    attr_reader :onramps

    # @return [Privy::Resources::Funding]
    attr_reader :funding

    # @return [Privy::Resources::Organizations]
    attr_reader :organizations

    # @return [Privy::Resources::CrossApp]
    attr_reader :cross_app

    # @return [Privy::Resources::Shared]
    attr_reader :shared

    # @return [Privy::Resources::OAuth]
    attr_reader :oauth

    # @return [Privy::Resources::WalletActions]
    attr_reader :wallet_actions

    # @return [Privy::Resources::Yield]
    attr_reader :yield_

    # @return [Privy::Resources::KrakenEmbed]
    attr_reader :kraken_embed

    # @return [Privy::Resources::Swaps]
    attr_reader :swaps

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @app_id.nil? || @app_secret.nil?

      base64_credentials = ["#{@app_id}:#{@app_secret}"].pack("m0")
      {"authorization" => "Basic #{base64_credentials}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param app_id [String, nil] App secret authentication. Defaults to `ENV["PRIVY_APP_ID"]`
    #
    # @param app_secret [String, nil] App secret authentication. Defaults to `ENV["PRIVY_APP_SECRET"]`
    #
    # @param environment [:production, :staging, nil] Specifies the environment to use for the API.
    #
    # Each environment maps to a different base URL:
    #
    # - `production` corresponds to `https://api.privy.io`
    # - `staging` corresponds to `https://api.staging.privy.io`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["PRIVY_API_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      app_id: ENV["PRIVY_APP_ID"],
      app_secret: ENV["PRIVY_APP_SECRET"],
      environment: nil,
      base_url: ENV["PRIVY_API_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= Privy::Client::ENVIRONMENTS.fetch(environment&.to_sym || :production) do
        message = "environment must be one of #{Privy::Client::ENVIRONMENTS.keys}, got #{environment}"
        raise ArgumentError.new(message)
      end

      if app_id.nil?
        raise ArgumentError.new("app_id is required, and can be set via environ: \"PRIVY_APP_ID\"")
      end
      if app_secret.nil?
        raise ArgumentError.new("app_secret is required, and can be set via environ: \"PRIVY_APP_SECRET\"")
      end

      headers = {
        "privy-app-id" => (@app_id = app_id.to_s)
      }
      custom_headers_env = ENV["PRIVY_API_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env.split("\n").each do |line|
          colon = line.index(":")
          unless colon.nil?
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip
          end
        end
        headers = parsed.merge(headers)
      end

      @app_secret = app_secret.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @wallets = Privy::Resources::Wallets.new(client: self)
      @users = Privy::Resources::Users.new(client: self)
      @policies = Privy::Resources::Policies.new(client: self)
      @transactions = Privy::Resources::Transactions.new(client: self)
      @key_quorums = Privy::Resources::KeyQuorums.new(client: self)
      @intents = Privy::Resources::Intents.new(client: self)
      @apps = Privy::Resources::Apps.new(client: self)
      @webhooks = Privy::Resources::Webhooks.new(client: self)
      @accounts = Privy::Resources::Accounts.new(client: self)
      @aggregations = Privy::Resources::Aggregations.new(client: self)
      @embedded_wallets = Privy::Resources::EmbeddedWallets.new(client: self)
      @analytics = Privy::Resources::Analytics.new(client: self)
      @client_auth = Privy::Resources::ClientAuth.new(client: self)
      @onramps = Privy::Resources::Onramps.new(client: self)
      @funding = Privy::Resources::Funding.new(client: self)
      @organizations = Privy::Resources::Organizations.new(client: self)
      @cross_app = Privy::Resources::CrossApp.new(client: self)
      @shared = Privy::Resources::Shared.new(client: self)
      @oauth = Privy::Resources::OAuth.new(client: self)
      @wallet_actions = Privy::Resources::WalletActions.new(client: self)
      @yield_ = Privy::Resources::Yield.new(client: self)
      @kraken_embed = Privy::Resources::KrakenEmbed.new(client: self)
      @swaps = Privy::Resources::Swaps.new(client: self)
    end
  end
end
