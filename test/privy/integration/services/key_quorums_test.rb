# frozen_string_literal: true

require_relative "../integration_test_helper"

class Privy::Test::Integration::KeyQuorumsTest < Privy::Test::IntegrationTest
  def test_create_key_quorum
    kp1 = Privy::Cryptography.generate_p256_key_pair
    kp2 = Privy::Cryptography.generate_p256_key_pair

    key_quorum = client.key_quorums.create(
      key_quorum_create_params: {
        public_keys: [kp1.public_key, kp2.public_key],
        display_name: "2 of 2 Test Key Quorum",
        authorization_threshold: 2
      }
    )

    refute_nil(key_quorum.id)
    assert_equal("2 of 2 Test Key Quorum", key_quorum.display_name)
    assert_equal(2, key_quorum.authorization_threshold)
    assert_equal(2, key_quorum.authorization_keys.length)

    public_keys = key_quorum.authorization_keys.map(&:public_key)
    assert_includes(public_keys, kp1.public_key)
    assert_includes(public_keys, kp2.public_key)

    cleanup_key_quorum(key_quorum.id, [kp1.private_key, kp2.private_key])
  end

  def test_update_key_quorum_threshold
    kp1 = Privy::Cryptography.generate_p256_key_pair
    kp2 = Privy::Cryptography.generate_p256_key_pair

    key_quorum = client.key_quorums.create(
      key_quorum_create_params: {
        public_keys: [kp1.public_key, kp2.public_key],
        display_name: "2 of 2 Update Test",
        authorization_threshold: 2
      }
    )

    # Update from 2-of-2 to 1-of-2 (requires both keys since threshold is 2)
    ctx_both = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp1.private_key, kp2.private_key]
    )
    updated = client.key_quorums.update(
      key_quorum.id,
      key_quorum_update_params: {authorization_threshold: 1},
      authorization_context: ctx_both
    )
    assert_equal(1, updated.authorization_threshold)

    # Update back to 2-of-2 (only 1 key needed now since threshold is 1)
    ctx_single = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp1.private_key]
    )
    restored = client.key_quorums.update(
      key_quorum.id,
      key_quorum_update_params: {authorization_threshold: 2},
      authorization_context: ctx_single
    )
    assert_equal(2, restored.authorization_threshold)

    cleanup_key_quorum(key_quorum.id, [kp1.private_key, kp2.private_key])
  end

  private

  def cleanup_key_quorum(id, private_keys)
    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: private_keys
    )
    prepared = Privy::Authorization.prepare_request(
      client,
      method: :delete,
      url: Privy::Authorization.signed_url(client, "v1/key_quorums/#{id}"),
      body: "",
      authorization_context: ctx
    )
    params = {request_options: {extra_headers: {"Content-Type" => nil}}}
    Privy::Authorization.merge_prepared_headers!(params, prepared.headers)
    client.key_quorums.delete(id, params)
  end
end
