# frozen_string_literal: true

module Privy
  PrivyRequestOptions = Data.define(
    :authorization_context,
    :idempotency_key,
    :request_options
  ) do
    def self.build(
      authorization_context: nil,
      idempotency_key: nil,
      request_options: nil
    )
      new(
        authorization_context: authorization_context,
        idempotency_key: idempotency_key,
        request_options: request_options
      )
    end
  end
end
