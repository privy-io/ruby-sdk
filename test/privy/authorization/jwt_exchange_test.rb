# frozen_string_literal: true

require_relative "../test_helper"
require "base64"
require "openssl"
require "hpke"

class Privy::JwtExchangeServiceTest < Minitest::Test
  def setup
    @wallets_resource = Object.new
    @service = Privy::JwtExchangeService.new(wallets_resource: @wallets_resource, cache_max_capacity: 3)
  end

  def test_exchange_jwt_decrypts_and_returns_authorization_key
    jwt = "test.jwt.token"
    plaintext = "base64-encoded-private-key-material"

    stub_authenticate(jwt, plaintext, expires_at: future_ms)

    result = @service.exchange_jwt_for_authorization_key(jwt)
    assert_equal(plaintext, result)
  end

  def test_exchange_jwt_caches_result
    jwt = "cached.jwt.token"
    plaintext = "cached-key"
    call_count = 0

    stub_authenticate(jwt, plaintext, expires_at: future_ms) { call_count += 1 }

    first = @service.exchange_jwt_for_authorization_key(jwt)
    second = @service.exchange_jwt_for_authorization_key(jwt)

    assert_equal(first, second)
    assert_equal(1, call_count)
  end

  def test_expired_cache_entry_is_evicted
    jwt = "expiring.jwt.token"
    plaintext = "expiring-key"
    call_count = 0

    stub_authenticate(jwt, plaintext, expires_at: past_ms) { call_count += 1 }

    @service.exchange_jwt_for_authorization_key(jwt)

    stub_authenticate(jwt, plaintext, expires_at: future_ms) { call_count += 1 }
    @service.exchange_jwt_for_authorization_key(jwt)

    assert_equal(2, call_count)
  end

  def test_cache_evicts_when_full
    call_counts = Hash.new(0)

    4.times do |i|
      jwt = "jwt-#{i}"
      stub_authenticate(jwt, "key-#{i}", expires_at: future_ms) { call_counts[jwt] += 1 }
      @service.exchange_jwt_for_authorization_key(jwt)
    end

    assert_equal(4, call_counts.values.sum)
  end

  def test_raises_on_unsupported_encryption_type
    jwt = "bad.jwt.token"
    encrypted = Struct.new(:encryption_type, :encapsulated_key, :ciphertext)
                      .new("AES", "abc", "def")
    response = Struct.new(:encrypted_authorization_key, :expires_at)
                     .new(encrypted, future_ms)

    @wallets_resource.define_singleton_method(:authenticate_with_jwt) { |**_| response }

    assert_raises(Privy::Errors::Error) do
      @service.exchange_jwt_for_authorization_key(jwt)
    end
  end

  private

  def future_ms
    ((Time.now.to_f + 3600) * 1000).to_i
  end

  def past_ms
    ((Time.now.to_f - 1) * 1000).to_i
  end

  def stub_authenticate(_jwt, plaintext, expires_at:, &on_call)
    recipient_key = extract_recipient_public_key
    encrypted_payload = hpke_encrypt(recipient_key, plaintext)

    encrypted = Struct.new(:encryption_type, :encapsulated_key, :ciphertext)
                      .new("HPKE", encrypted_payload[:encapsulated_key], encrypted_payload[:ciphertext])
    response = Struct.new(:encrypted_authorization_key, :expires_at)
                     .new(encrypted, expires_at)

    @wallets_resource.define_singleton_method(:authenticate_with_jwt) do |**_kwargs|
      on_call&.call
      response
    end
  end

  def extract_recipient_public_key
    # Access the service's internal HPKE recipient public key for encryption
    recipient = @service.instance_variable_get(:@hpke_recipient)
    recipient.public_key_pkey
  end

  def hpke_encrypt(public_key, plaintext)
    hpke = HPKE.new(HPKE::DHKEM_P256_HKDF_SHA256, HPKE::HKDF_SHA256, HPKE::CHACHA20_POLY1305)
    result = hpke.setup_base_s(public_key, "")
    ciphertext = result[:context_s].seal("", plaintext)

    {
      encapsulated_key: Base64.strict_encode64(result[:enc]),
      ciphertext: Base64.strict_encode64(ciphertext)
    }
  end
end
