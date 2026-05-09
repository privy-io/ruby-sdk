# frozen_string_literal: true

module Privy
  class PrivyClient
    attr_reader :app_id, :app_secret

    # @api private
    attr_reader :api

    # Service accessors.
    attr_reader :wallets, :users, :policies, :key_quorums, :jwt_exchange

    def initialize(
      app_id: ENV["PRIVY_APP_ID"],
      app_secret: ENV["PRIVY_APP_SECRET"],
      environment: nil,
      base_url: ENV["PRIVY_API_BASE_URL"],
      max_retries: Privy::Client::DEFAULT_MAX_RETRIES,
      timeout: Privy::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Privy::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Privy::Client::DEFAULT_MAX_RETRY_DELAY
    )
      @app_id = app_id
      @app_secret = app_secret

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
      @jwt_exchange = Privy::JwtExchangeService.new(wallets_resource: @api.wallets)
    end
  end
end
