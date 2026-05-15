# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Services::PoliciesTest < Minitest::Test
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

  def build_client(**opts)
    Privy::PrivyClient.new(app_id: "app-abc", app_secret: "secret", environment: :staging, **opts)
  end

  def policy_response_body(**overrides)
    {
      id: "p-1",
      chain_type: "ethereum",
      created_at: 0,
      name: "test policy",
      owner_id: nil,
      rules: [],
      version: "1.0"
    }.merge(overrides).to_json
  end

  def stub_json(method, url, body:)
    stub_request(method, url).to_return(
      status: 200,
      body: body,
      headers: {"content-type" => "application/json"}
    )
  end

  # --- request_expiry on update -----------------------------------------------

  def test_update_default_request_expiry_is_auto_set
    stub_json(:patch, "#{BASE_URL}/v1/policies/p-1", body: policy_response_body(name: "n"))
    before = Process.clock_gettime(Process::CLOCK_REALTIME, :millisecond)
    build_client.policies.update("p-1", policy_update_params: {name: "n"})
    assert_requested(:patch, "#{BASE_URL}/v1/policies/p-1") do |req|
      sent = req.headers["Privy-Request-Expiry"].to_i
      assert_in_delta(before + (15 * 60 * 1_000), sent, 5_000)
    end
  end

  def test_update_per_call_request_expiry_overrides_default
    stub_json(:patch, "#{BASE_URL}/v1/policies/p-1", body: policy_response_body(name: "n"))
    build_client.policies.update(
      "p-1",
      policy_update_params: {name: "n"},
      request_expiry: 1_750_000_000_000
    )
    assert_requested(:patch, "#{BASE_URL}/v1/policies/p-1") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  def test_update_disabled_options_omit_header
    stub_json(:patch, "#{BASE_URL}/v1/policies/p-1", body: policy_response_body(name: "n"))
    build_client(request_expiry: Privy::PrivyRequestExpiryOptions.build(disabled: true))
      .policies.update("p-1", policy_update_params: {name: "n"})
    assert_requested(:patch, "#{BASE_URL}/v1/policies/p-1") do |req|
      refute(req.headers.key?("Privy-Request-Expiry"))
    end
  end

  def test_update_disabled_options_still_honor_explicit_override
    stub_json(:patch, "#{BASE_URL}/v1/policies/p-1", body: policy_response_body(name: "n"))
    build_client(request_expiry: Privy::PrivyRequestExpiryOptions.build(disabled: true))
      .policies.update("p-1", policy_update_params: {name: "n"}, request_expiry: 1_750_000_000_000)
    assert_requested(:patch, "#{BASE_URL}/v1/policies/p-1") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  # --- request_expiry on delete / create_rule / update_rule / delete_rule ----

  def test_delete_per_call_request_expiry_overrides_default
    stub_request(:delete, "#{BASE_URL}/v1/policies/p-1").to_return(
      status: 200, body: '{"success":true}', headers: {"content-type" => "application/json"}
    )
    build_client.policies.delete("p-1", request_expiry: 1_750_000_000_000)
    assert_requested(:delete, "#{BASE_URL}/v1/policies/p-1") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  def test_create_rule_per_call_request_expiry_overrides_default
    stub_json(
      :post,
      "#{BASE_URL}/v1/policies/p-1/rules",
      body: '{"id":"r-1","name":"n","method":"eth_sendTransaction","action":"ALLOW","conditions":[]}'
    )
    build_client.policies.create_rule(
      "p-1",
      policy_create_rule_params: {
        name: "n", method: "eth_sendTransaction", action: "ALLOW", conditions: []
      },
      request_expiry: 1_750_000_000_000
    )
    assert_requested(:post, "#{BASE_URL}/v1/policies/p-1/rules") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  def test_update_rule_per_call_request_expiry_overrides_default
    stub_json(
      :patch,
      "#{BASE_URL}/v1/policies/p-1/rules/r-1",
      body: '{"id":"r-1","name":"n","method":"eth_sendTransaction","action":"ALLOW","conditions":[]}'
    )
    build_client.policies.update_rule(
      "r-1",
      policy_id: "p-1",
      policy_update_rule_params: {
        name: "n", method: "eth_sendTransaction", action: "ALLOW", conditions: []
      },
      request_expiry: 1_750_000_000_000
    )
    assert_requested(:patch, "#{BASE_URL}/v1/policies/p-1/rules/r-1") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  def test_delete_rule_per_call_request_expiry_overrides_default
    stub_request(:delete, "#{BASE_URL}/v1/policies/p-1/rules/r-1").to_return(
      status: 200, body: '{"success":true}', headers: {"content-type" => "application/json"}
    )
    build_client.policies.delete_rule("r-1", policy_id: "p-1", request_expiry: 1_750_000_000_000)
    assert_requested(:delete, "#{BASE_URL}/v1/policies/p-1/rules/r-1") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end
end
