# frozen_string_literal: true

require_relative "../test_helper"

class Privy::PrivyClientTest < Minitest::Test
  def test_constructs_with_explicit_credentials
    client = Privy::PrivyClient.new(app_id: "app-123", app_secret: "secret", environment: :staging)
    assert_equal("app-123", client.app_id)
    assert_instance_of(Privy::Client, client.api)
  end

  def build_client(**opts)
    Privy::PrivyClient.new(
      app_id: "app-abc",
      app_secret: "secret",
      environment: :staging,
      **opts
    )
  end

  def now_ms
    Process.clock_gettime(Process::CLOCK_REALTIME, :millisecond)
  end

  def test_default_expiry_is_15_minutes_from_now
    client = build_client
    expiry = client.compute_request_expiry(nil)
    assert_in_delta(now_ms + (15 * 60 * 1_000), expiry, 1_000)
  end

  def test_default_ms_overrides_hardcoded_default
    client = build_client(
      request_expiry: Privy::PrivyRequestExpiryOptions.build(default_ms: 60_000)
    )
    expiry = client.compute_request_expiry(nil)
    assert_in_delta(now_ms + 60_000, expiry, 1_000)
  end

  def test_disabled_returns_nil
    client = build_client(
      request_expiry: Privy::PrivyRequestExpiryOptions.build(disabled: true)
    )
    assert_nil(client.compute_request_expiry(nil))
  end

  def test_explicit_override_wins_over_default_ms
    client = build_client(
      request_expiry: Privy::PrivyRequestExpiryOptions.build(default_ms: 60_000)
    )
    assert_equal(1_750_000_000_000, client.compute_request_expiry(1_750_000_000_000))
  end

  def test_explicit_override_wins_over_disabled
    client = build_client(
      request_expiry: Privy::PrivyRequestExpiryOptions.build(disabled: true)
    )
    assert_equal(1_750_000_000_000, client.compute_request_expiry(1_750_000_000_000))
  end

  def test_request_expiry_options_default_value_does_not_disable
    client = build_client
    refute_nil(client.compute_request_expiry(nil))
  end

  def test_compute_request_expiry_callable_without_arguments
    client = build_client
    refute_nil(client.compute_request_expiry)
  end

  def test_default_authorization_key_cache_max_capacity_uses_service_default
    client = Privy::PrivyClient.new(app_id: "app-123", app_secret: "secret", environment: :staging)
    configured = client.jwt_exchange.cache_max_capacity
    assert_equal(Privy::JwtExchangeService::DEFAULT_CACHE_MAX_CAPACITY, configured)
  end

  def test_authorization_key_cache_max_capacity_is_forwarded_to_jwt_exchange
    client = Privy::PrivyClient.new(
      app_id: "app-123",
      app_secret: "secret",
      environment: :staging,
      authorization_key_cache_max_capacity: 7
    )
    configured = client.jwt_exchange.cache_max_capacity
    assert_equal(7, configured)
  end
end
