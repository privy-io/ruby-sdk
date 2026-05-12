# frozen_string_literal: true

require_relative "../integration_test_helper"

class Privy::Test::Integration::PoliciesTest < Privy::Test::IntegrationTest
  def test_create_policy
    policy = client.policies.create(
      policy_create_params: {
        version: "1.0",
        name: "Native token transfer maximums",
        chain_type: "ethereum",
        rules: [
          {
            name: "Restrict ETH transfers to a maximum value",
            method: "eth_sendTransaction",
            action: "ALLOW",
            conditions: [
              {
                field_source: "ethereum_transaction",
                field: "value",
                operator: "lte",
                value: "0x2386F26FC10000"
              }
            ]
          }
        ]
      }
    )

    refute_nil(policy.id)
    assert_equal("Native token transfer maximums", policy.name)
    assert_equal(:ethereum, policy.chain_type)
    assert_equal(1, policy.rules.length)
    assert_equal("Restrict ETH transfers to a maximum value", policy.rules[0].name)
    assert_equal(:eth_sendTransaction, policy.rules[0].method_)

    client.policies.delete(policy.id)
  end

  def test_create_idempotency_same_key_same_body_succeeds
    idempotency_key = SecureRandom.uuid

    response1 = client.policies.create(
      policy_create_params: {
        version: "1.0",
        name: "RubySDK Idempotency Test",
        chain_type: "ethereum",
        rules: []
      },
      idempotency_key: idempotency_key
    )
    refute_nil(response1.id)
    assert_equal("RubySDK Idempotency Test", response1.name)
    assert_equal(:ethereum, response1.chain_type)

    response2 = client.policies.create(
      policy_create_params: {
        version: "1.0",
        name: "RubySDK Idempotency Test",
        chain_type: "ethereum",
        rules: []
      },
      idempotency_key: idempotency_key
    )
    assert_equal(response1.id, response2.id)

    client.policies.delete(response1.id)
  end

  def test_create_idempotency_same_key_different_body_fails
    idempotency_key = SecureRandom.uuid

    response = client.policies.create(
      policy_create_params: {
        version: "1.0",
        name: "RubySDK Idempotency Test",
        chain_type: "ethereum",
        rules: []
      },
      idempotency_key: idempotency_key
    )

    assert_raises(Privy::Errors::APIStatusError) do
      client.policies.create(
        policy_create_params: {
          version: "1.0",
          name: "RubySDK Idempotency Test Different",
          chain_type: "ethereum",
          rules: []
        },
        idempotency_key: idempotency_key
      )
    end

    client.policies.delete(response.id)
  end
end
