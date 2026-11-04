# frozen_string_literal: true

module Privy
  # Configures request-expiry behavior on Privy::PrivyClient.
  #
  # @!attribute [r] default_ms
  #   @return [Integer, nil] Default expiry duration in milliseconds-from-now used by
  #     non-intent methods when a caller does not pass `request_expiry:` explicitly.
  #     `nil` falls back to {Privy::PrivyClient::DEFAULT_REQUEST_EXPIRY_MS} (15 minutes).
  # @!attribute [r] default_intent_ms
  #   @return [Integer, nil] Default expiry duration in milliseconds-from-now used by
  #     `client.intents` methods when a caller does not pass `request_expiry:` explicitly.
  #     `nil` falls back to {Privy::PrivyClient::DEFAULT_INTENT_REQUEST_EXPIRY_MS} (72 hours).
  #     Independent of `default_ms`.
  # @!attribute [r] disabled
  #   @return [Boolean] When true, no `privy-request-expiry` header is auto-set. An
  #     explicit per-call `request_expiry:` value still wins over this flag.
  PrivyRequestExpiryOptions = Data.define(:default_ms, :default_intent_ms, :disabled) do
    def self.build(default_ms: nil, default_intent_ms: nil, disabled: false)
      new(default_ms: default_ms, default_intent_ms: default_intent_ms, disabled: disabled)
    end

    def initialize(default_ms: nil, default_intent_ms: nil, disabled: false)
      validate_duration!(:default_ms, default_ms)
      validate_duration!(:default_intent_ms, default_intent_ms)
      unless [true, false].include?(disabled)
        raise ArgumentError, "request_expiry disabled must be true or false, got #{disabled.inspect}"
      end

      super
    end

    private

    def validate_duration!(name, value)
      return if value.nil? || (value.is_a?(Integer) && value >= 0)

      raise ArgumentError,
            "request_expiry #{name} must be a non-negative Integer of milliseconds or nil, got #{value.inspect}"
    end
  end
end
