# frozen_string_literal: true

require "base64"

module Privy
  class JwtExchangeService
    DEFAULT_CACHE_MAX_CAPACITY = 1000

    attr_reader :cache_max_capacity

    def initialize(wallets_resource:, cache_max_capacity: DEFAULT_CACHE_MAX_CAPACITY)
      @wallets = wallets_resource
      @hpke_recipient = Privy::Cryptography::HpkeRecipient.new
      @cache = {}
      @cache_max_capacity = cache_max_capacity
      @mutex = Mutex.new
    end

    def exchange_jwt_for_authorization_key(jwt)
      cached = get_cached(jwt)
      return cached if cached

      response = @wallets.authenticate_with_jwt(
        user_jwt: jwt,
        encryption_type: :HPKE,
        recipient_public_key: Base64.strict_encode64(@hpke_recipient.public_key_spki)
      )

      encrypted = response.encrypted_authorization_key
      unless encrypted && encrypted.encryption_type.to_s == "HPKE"
        raise Privy::Errors::Error, "JWT exchange failed: unsupported encryption type"
      end

      decrypted_key = @hpke_recipient.decrypt(
        Base64.strict_decode64(encrypted.encapsulated_key),
        Base64.strict_decode64(encrypted.ciphertext)
      )

      authorization_key = decrypted_key.force_encoding("UTF-8")
      cache_put(jwt, authorization_key, response.expires_at)
      authorization_key
    end

    private

    def get_cached(jwt)
      @mutex.synchronize do
        entry = @cache[jwt]
        return nil unless entry

        if entry[:expires_at] > current_time_ms
          entry[:key]
        else
          @cache.delete(jwt)
          nil
        end
      end
    end

    def cache_put(jwt, key, expires_at)
      @mutex.synchronize do
        evict_if_full
        @cache[jwt] = {key: key, expires_at: expires_at}
      end
    end

    def evict_if_full
      return unless @cache.size >= @cache_max_capacity

      now_ms = current_time_ms
      @cache.delete_if { |_, v| v[:expires_at] <= now_ms }
      @cache.delete(@cache.keys.first) if @cache.size >= @cache_max_capacity
    end

    def current_time_ms
      (Time.now.to_f * 1000).to_i
    end
  end
end
