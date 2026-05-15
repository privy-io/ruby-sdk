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

    # Wait for the server to finish processing the first request; otherwise the
    # second call returns "Previous request with matching idempotency key is still in progress."
    sleep(1)

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

  def test_update_policy_owner
    kp = Privy::Cryptography.generate_p256_key_pair

    # Create an ownerless policy
    policy = client.policies.create(
      policy_create_params: {
        version: "1.0",
        name: "RubySDK Policies Update Test",
        chain_type: "ethereum",
        rules: []
      }
    )
    refute_nil(policy.id)
    assert_nil(policy.owner_id)

    # Update the owner to a P-256 key
    policy2 = client.policies.update(
      policy.id,
      policy_update_params: {owner: {public_key: kp.public_key}}
    )
    refute_nil(policy2.owner_id)

    # Remove the owner (requires authorization)
    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp.private_key]
    )
    policy3 = client.policies.update(
      policy.id,
      policy_update_params: {owner: nil},
      authorization_context: ctx
    )
    assert_nil(policy3.owner_id)

    client.policies.delete(policy.id)
  end

  def test_delete_owned_policy
    kp = Privy::Cryptography.generate_p256_key_pair

    policy = client.policies.create(
      policy_create_params: {
        version: "1.0",
        name: "RubySDK Policies Delete Test",
        chain_type: "ethereum",
        rules: [],
        owner: {public_key: kp.public_key}
      }
    )
    refute_nil(policy.id)

    # Verify it exists
    fetched = client.policies.get(policy.id)
    assert_equal(policy.id, fetched.id)

    # Delete with authorization
    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp.private_key]
    )
    result = client.policies.delete(policy.id, authorization_context: ctx)
    assert_equal(true, result.success)

    # Verify it no longer exists
    assert_raises(Privy::Errors::APIStatusError) do
      client.policies.get(policy.id)
    end
  end

  def test_create_rule
    kp = Privy::Cryptography.generate_p256_key_pair
    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp.private_key]
    )

    policy = client.policies.create(
      policy_create_params: {
        version: "1.0",
        name: "RubySDK Create Rule Test",
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
        ],
        owner: {public_key: kp.public_key}
      }
    )
    original_rule_id = policy.rules[0].id

    response = client.policies.create_rule(
      policy.id,
      policy_create_rule_params: {
        name: "Allow transfers to known address",
        method: "eth_sendTransaction",
        action: "ALLOW",
        conditions: [
          {
            field_source: "ethereum_transaction",
            field: "to",
            operator: "eq",
            value: "0x0000000000000000000000000000000000000001"
          }
        ]
      },
      authorization_context: ctx
    )
    refute_nil(response.id)

    fetched = client.policies.get(policy.id)
    assert_equal(2, fetched.rules.length)
    assert_equal(original_rule_id, fetched.rules[0].id)
    assert_equal(response.id, fetched.rules[1].id)
    assert_equal("Allow transfers to known address", fetched.rules[1].name)

    client.policies.delete(policy.id, authorization_context: ctx)
  end

  def test_update_rule
    kp = Privy::Cryptography.generate_p256_key_pair
    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp.private_key]
    )

    policy = client.policies.create(
      policy_create_params: {
        version: "1.0",
        name: "RubySDK Update Rule Test",
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
        ],
        owner: {public_key: kp.public_key}
      }
    )
    rule_id = policy.rules[0].id

    response = client.policies.update_rule(
      rule_id,
      policy_id: policy.id,
      policy_update_rule_params: {
        name: "Updated rule name",
        method: "eth_sendTransaction",
        action: "DENY",
        conditions: [
          {
            field_source: "ethereum_transaction",
            field: "to",
            operator: "eq",
            value: "0x0000000000000000000000000000000000000001"
          }
        ]
      },
      authorization_context: ctx
    )
    assert_equal(rule_id, response.id)

    fetched = client.policies.get(policy.id)
    assert_equal(1, fetched.rules.length)
    assert_equal(rule_id, fetched.rules[0].id)
    assert_equal("Updated rule name", fetched.rules[0].name)
    assert_equal(:DENY, fetched.rules[0].action)

    client.policies.delete(policy.id, authorization_context: ctx)
  end

  def test_delete_rule
    kp = Privy::Cryptography.generate_p256_key_pair
    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp.private_key]
    )

    policy = client.policies.create(
      policy_create_params: {
        version: "1.0",
        name: "RubySDK Delete Rule Test",
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
        ],
        owner: {public_key: kp.public_key}
      }
    )
    rule_id = policy.rules[0].id

    result = client.policies.delete_rule(
      rule_id,
      policy_id: policy.id,
      authorization_context: ctx
    )
    assert_equal(true, result.success)

    fetched = client.policies.get(policy.id)
    assert_equal(0, fetched.rules.length)

    client.policies.delete(policy.id, authorization_context: ctx)
  end
end
