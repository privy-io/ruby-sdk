# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Services::KeyQuorumsTest < Minitest::Test
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

  def key_quorum_response_body(**overrides)
    {
      id: "kq-1",
      authorization_keys: [],
      authorization_threshold: 1.0,
      display_name: nil,
      user_ids: nil
    }.merge(overrides).to_json
  end

  def stub_json(method, url, body:)
    stub_request(method, url).to_return(
      status: 200,
      body: body,
      headers: {"content-type" => "application/json"}
    )
  end

  # --- request_expiry on update ----------------------------------------------

  def test_update_default_request_expiry_is_auto_set
    stub_json(:patch, "#{BASE_URL}/v1/key_quorums/kq-1", body: key_quorum_response_body)
    before = Process.clock_gettime(Process::CLOCK_REALTIME, :millisecond)
    build_client.key_quorums.update("kq-1", key_quorum_update_params: {authorization_threshold: 1})
    assert_requested(:patch, "#{BASE_URL}/v1/key_quorums/kq-1") do |req|
      assert_in_delta(before + (15 * 60 * 1_000), req.headers["Privy-Request-Expiry"].to_i, 5_000)
    end
  end

  def test_update_per_call_request_expiry_overrides_default
    stub_json(:patch, "#{BASE_URL}/v1/key_quorums/kq-1", body: key_quorum_response_body)
    build_client.key_quorums.update(
      "kq-1",
      key_quorum_update_params: {authorization_threshold: 1},
      request_expiry: 1_750_000_000_000
    )
    assert_requested(:patch, "#{BASE_URL}/v1/key_quorums/kq-1") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  def test_update_disabled_options_omit_header
    stub_json(:patch, "#{BASE_URL}/v1/key_quorums/kq-1", body: key_quorum_response_body)
    build_client(request_expiry: Privy::PrivyRequestExpiryOptions.build(disabled: true))
      .key_quorums.update("kq-1", key_quorum_update_params: {authorization_threshold: 1})
    assert_requested(:patch, "#{BASE_URL}/v1/key_quorums/kq-1") do |req|
      refute(req.headers.key?("Privy-Request-Expiry"))
    end
  end

  def test_update_disabled_options_still_honor_explicit_override
    stub_json(:patch, "#{BASE_URL}/v1/key_quorums/kq-1", body: key_quorum_response_body)
    build_client(request_expiry: Privy::PrivyRequestExpiryOptions.build(disabled: true))
      .key_quorums.update(
        "kq-1",
        key_quorum_update_params: {authorization_threshold: 1},
        request_expiry: 1_750_000_000_000
      )
    assert_requested(:patch, "#{BASE_URL}/v1/key_quorums/kq-1") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  # --- request_expiry on delete ----------------------------------------------

  def test_delete_per_call_request_expiry_overrides_default
    stub_request(:delete, "#{BASE_URL}/v1/key_quorums/kq-1").to_return(
      status: 200, body: '{"success":true}', headers: {"content-type" => "application/json"}
    )
    build_client.key_quorums.delete("kq-1", request_expiry: 1_750_000_000_000)
    assert_requested(:delete, "#{BASE_URL}/v1/key_quorums/kq-1") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end
end
