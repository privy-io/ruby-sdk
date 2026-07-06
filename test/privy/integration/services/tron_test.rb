# frozen_string_literal: true

require_relative "../integration_test_helper"

# Integration tests for Privy::Services::Tron — the typed tron sub-service
# exposed as client.wallets.tron.
#
# sign_transaction is tested against ownerless and P-256-owned Tron wallets.
# send_transaction is intentionally skipped to avoid spending real funds on the
# Tron network; the structural plumbing (body shape, header injection, response
# decoding) is shared with sign_transaction and is exercised indirectly.
class Privy::Test::Integration::TronTest < Privy::Test::IntegrationTest
  # Decode a base58check Tron address (T...) to its 21-byte hex representation
  # (41...) by stripping the 4-byte checksum appended after the 21-byte payload.
  def tron_base58_to_hex(base58_address)
    # Privy::Base58.decode returns binary: 21 payload bytes + 4 checksum bytes
    bytes = Privy::Base58.decode(base58_address)
    bytes[0, 21].unpack1("H*")
  end

  # Build a minimal tron_signTransaction raw_data hash for the given wallet hex
  # address. Block reference fields are intentionally short placeholder values
  # that satisfy the schema but are not real block hashes — signing a dummy
  # transaction does not require valid on-chain references.
  def minimal_raw_data(owner_hex_address)
    {
      contract: [
        {
          type: "TransferContract",
          owner_address: owner_hex_address,
          to_address: "410000000000000000000000000000000000000000",
          amount: 1
        }
      ],
      ref_block_bytes: "1a2b",
      ref_block_hash: "abc1234567890def",
      expiration: (Time.now.to_i * 1000) + 60_000,
      timestamp: Time.now.to_i * 1000
    }
  end

  def test_wallets_tron_is_a_tron_service_instance
    assert_instance_of(Privy::Services::Tron, client.wallets.tron)
  end

  def test_sign_transaction_on_ownerless_tron_wallet_returns_hex_signed_transaction
    wallet = client.wallets.create(wallet_create_params: {chain_type: :tron})

    refute_nil(wallet.id)
    refute_nil(wallet.address)

    owner_hex = tron_base58_to_hex(wallet.address)
    raw_data = minimal_raw_data(owner_hex)

    response = client.wallets.tron.sign_transaction(wallet.id, params: {raw_data: raw_data})

    refute_nil(response.signed_transaction, "expected signed_transaction to be set")
    assert_equal(:hex, response.encoding, "expected encoding to be :hex")
    assert(
      response.signed_transaction.length >= 130,
      "expected signed_transaction to be at least 65 bytes (130 hex chars), " \
      "got #{response.signed_transaction.length} chars"
    )
    assert_match(
      /\A[0-9a-fA-F]+\z/,
      response.signed_transaction,
      "expected signed_transaction to be a valid hex string"
    )
  end

  def test_sign_transaction_on_p256_owned_tron_wallet_returns_hex_signed_transaction
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {
        chain_type: :tron,
        owner: {public_key: kp.public_key}
      }
    )

    refute_nil(wallet.id)
    refute_nil(wallet.address)
    refute_nil(wallet.owner_id, "expected owner_id to be set when P-256 owner is provided")

    owner_hex = tron_base58_to_hex(wallet.address)
    raw_data = minimal_raw_data(owner_hex)

    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp.private_key]
    )

    response = client.wallets.tron.sign_transaction(
      wallet.id,
      params: {raw_data: raw_data},
      authorization_context: ctx
    )

    refute_nil(response.signed_transaction, "expected signed_transaction to be set")
    assert_equal(:hex, response.encoding, "expected encoding to be :hex")
    assert(
      response.signed_transaction.length >= 130,
      "expected signed_transaction to be at least 65 bytes (130 hex chars), " \
      "got #{response.signed_transaction.length} chars"
    )
    assert_match(
      /\A[0-9a-fA-F]+\z/,
      response.signed_transaction,
      "expected signed_transaction to be a valid hex string"
    )
  end

  def test_send_transaction_skipped_to_avoid_spending_funds
    # send_transaction calls tron_sendTransaction which broadcasts on-chain.
    # Skipped unconditionally to avoid spending real TRX during CI runs.
    # The structural plumbing (body construction, caip2 forwarding, header
    # injection, response decoding) is identical to sign_transaction and is
    # covered by those tests plus the unit test suite.
    skip("Skipped to avoid spending real TRX; unskip manually with a funded wallet to verify end-to-end")
  end
end
