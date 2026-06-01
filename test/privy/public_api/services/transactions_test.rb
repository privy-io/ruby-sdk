# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Services::TransactionsTest < Minitest::Test
  extend Minitest::Serial
  include WebMock::API

  BASE_URL = "https://api.staging.privy.io"

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

  def transaction_response_body(**overrides)
    {
      id: "tx-1",
      caip2: "eip155:1",
      created_at: 0,
      status: "broadcasted",
      transaction_hash: nil,
      wallet_id: "w-1"
    }.merge(overrides).to_json
  end

  def stub_json(method, url, body:)
    stub_request(method, url).to_return(
      status: 200,
      body: body,
      headers: {"content-type" => "application/json"}
    )
  end

  def test_get_hits_transactions_endpoint
    stub_json(:get, "#{BASE_URL}/v1/transactions/tx-1", body: transaction_response_body)
    response = build_client.transactions.get("tx-1")
    assert_requested(:get, "#{BASE_URL}/v1/transactions/tx-1")
    assert_equal("tx-1", response.id)
    assert_equal("w-1", response.wallet_id)
  end
end
