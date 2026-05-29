# frozen_string_literal: true

module Privy
  class PrivyClient
    # 15 minutes. Used when a caller doesn't pass `request_expiry:` and the
    # client's PrivyRequestExpiryOptions doesn't override `default_ms`.
    DEFAULT_REQUEST_EXPIRY_MS = 15 * 60 * 1_000

    attr_reader :app_id, :app_secret

    # @api private
    attr_reader :api

    # Service accessors.
    attr_reader :wallets, :users, :policies, :key_quorums, :transactions, :jwt_exchange

    # @return [Privy::PrivyRequestExpiryOptions]
    attr_reader :request_expiry_options

    def initialize(
      app_id: ENV["PRIVY_APP_ID"],
      app_secret: ENV["PRIVY_APP_SECRET"],
      environment: nil,
      base_url: ENV["PRIVY_API_BASE_URL"],
      max_retries: Privy::Client::DEFAULT_MAX_RETRIES,
      timeout: Privy::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Privy::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Privy::Client::DEFAULT_MAX_RETRY_DELAY,
      request_expiry: Privy::PrivyRequestExpiryOptions.build,
      authorization_key_cache_max_capacity: Privy::JwtExchangeService::DEFAULT_CACHE_MAX_CAPACITY
    )
      @app_id = app_id
      @app_secret = app_secret
      @request_expiry_options = request_expiry

      @api = Privy::Client.new(
        app_id: app_id,
        app_secret: app_secret,
        environment: environment,
        base_url: base_url,
        max_retries: max_retries,
        timeout: timeout,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @wallets = Privy::Services::Wallets.new(client: @api, privy_client: self)
      @users = Privy::Services::Users.new(client: @api, privy_client: self)
      @policies = Privy::Services::Policies.new(client: @api, privy_client: self)
      @key_quorums = Privy::Services::KeyQuorums.new(client: @api, privy_client: self)
      @transactions = Privy::Services::Transactions.new(client: @api, privy_client: self)
      @jwt_exchange = Privy::JwtExchangeService.new(
        wallets_resource: @api.wallets,
        cache_max_capacity: authorization_key_cache_max_capacity
      )
    end

    # Resolves the absolute Unix-ms timestamp to send as `privy-request-expiry`.
    #
    # Precedence:
    #   1. Explicit per-call value (caller wins, even over `disabled: true`).
    #   2. `disabled: true` -> nil (no header sent).
    #   3. `request_expiry_options.default_ms` (offset from now).
    #   4. {DEFAULT_REQUEST_EXPIRY_MS} (15 minutes from now).
    #
    # @param override_absolute_ms [Integer, nil] Absolute Unix-ms timestamp from caller.
    # @return [Integer, nil]
    def compute_request_expiry(override_absolute_ms = nil)
      return override_absolute_ms unless override_absolute_ms.nil?
      return nil if @request_expiry_options.disabled

      Process.clock_gettime(Process::CLOCK_REALTIME, :millisecond) +
        (@request_expiry_options.default_ms || DEFAULT_REQUEST_EXPIRY_MS)
    end
  end
end
