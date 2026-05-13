# frozen_string_literal: true

module Privy
  # Configures request-expiry behavior on Privy::PrivyClient.
  #
  # @!attribute [r] default_ms
  #   @return [Integer, nil] Default expiry duration in milliseconds-from-now used when a
  #     caller does not pass `request_expiry:` explicitly. `nil` falls back to
  #     {Privy::PrivyClient::DEFAULT_REQUEST_EXPIRY_MS} (15 minutes).
  # @!attribute [r] disabled
  #   @return [Boolean] When true, no `privy-request-expiry` header is auto-set. An
  #     explicit per-call `request_expiry:` value still wins over this flag.
  PrivyRequestExpiryOptions = Data.define(:default_ms, :disabled) do
    def self.build(default_ms: nil, disabled: false)
      new(default_ms: default_ms, disabled: disabled)
    end
  end
end
