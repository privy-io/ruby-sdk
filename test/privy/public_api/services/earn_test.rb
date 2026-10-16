# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Services::EarnTest < Minitest::Test
  extend Minitest::Serial
  include WebMock::API

  BASE_URL = "https://api.staging.privy.io"

  VAULT_ACTION_FIELDS = {
    id: "wa-1",
    asset_address: "0x0000000000000000000000000000000000000001",
    caip2: "eip155:8453",
    created_at: "2026-01-01T00:00:00Z",
    raw_amount: "1500000",
    share_amount: nil,
    status: "submitted",
    vault_address: "0x0000000000000000000000000000000000000001",
    vault_id: "vault-1",
    wallet_id: "w-1"
  }.freeze

  DEPOSIT_RESPONSE_BODY = VAULT_ACTION_FIELDS.merge(type: "earn_deposit").to_json
  WITHDRAW_RESPONSE_BODY = VAULT_ACTION_FIELDS.merge(type: "earn_withdraw").to_json

  CLAIM_RESPONSE_BODY = {
    id: "wa-1",
    chain: "base",
    created_at: "2026-01-01T00:00:00Z",
    rewards: nil,
    status: "submitted",
    type: "earn_incentive_claim",
    wallet_id: "w-1"
  }.to_json

  def before_all
    super
    WebMock.enable!
  end

  def after_all
    WebMock.disable!
    super
  end

  def teardown
    WebMock.reset!
    super
  end

  def build_client
    Privy::PrivyClient.new(app_id: "app-abc", app_secret: "secret", environment: :staging)
  end

  def stub_json(method, url, body:)
    stub_request(method, url).to_return(
      status: 200,
      body: body,
      headers: {"content-type" => "application/json"}
    )
  end

  def test_deposit_per_call_request_expiry_overrides_default
    url = "#{BASE_URL}/v1/wallets/w-1/earn/ethereum/deposit"
    stub_json(:post, url, body: DEPOSIT_RESPONSE_BODY)
    build_client.wallets.earn.ethereum.deposit(
      "w-1",
      earn_deposit_params: {vault_id: "vault-1", raw_amount: "1500000"},
      request_expiry: 1_750_000_000_000
    )
    assert_requested(:post, url) do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  def test_withdraw_per_call_request_expiry_overrides_default
    url = "#{BASE_URL}/v1/wallets/w-1/earn/ethereum/withdraw"
    stub_json(:post, url, body: WITHDRAW_RESPONSE_BODY)
    build_client.wallets.earn.ethereum.withdraw(
      "w-1",
      earn_withdraw_params: {vault_id: "vault-1", raw_amount: "1500000"},
      request_expiry: 1_750_000_000_000
    )
    assert_requested(:post, url) do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  def test_incentive_claim_per_call_request_expiry_overrides_default
    url = "#{BASE_URL}/v1/wallets/w-1/earn/ethereum/incentive/claim"
    stub_json(:post, url, body: CLAIM_RESPONSE_BODY)
    build_client.wallets.earn.ethereum.incentive.claim(
      "w-1",
      earn_incentive_claim_params: {chain: "base"},
      request_expiry: 1_750_000_000_000
    )
    assert_requested(:post, url) do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end
end
