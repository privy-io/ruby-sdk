# frozen_string_literal: true

require_relative "../test_helper"

class Privy::CryptographyTest < Minitest::Test
  def test_canonicalize_sorts_keys_and_strips_whitespace
    result = Privy::Authorization::Canonicalization.canonicalize({b: 1, a: [3, 2]})
    assert_equal('{"a":[3,2],"b":1}', result)
  end

  def test_canonicalize_empty_object_and_array
    assert_equal("{}", Privy::Authorization::Canonicalization.canonicalize({}))
    assert_equal("[]", Privy::Authorization::Canonicalization.canonicalize([]))
  end

  def test_canonicalize_nested
    result = Privy::Authorization::Canonicalization.canonicalize({outer: {z: 1, a: {nested: true}}})
    assert_equal('{"outer":{"a":{"nested":true},"z":1}}', result)
  end

  def test_round_trip_signature_verifies
    kp = Privy::Cryptography.generate_p256_key_pair
    pubkey = OpenSSL::PKey.read(kp.public_key.unpack1("m0"))
    payload = "hello world"
    sig_b64 = Privy::Authorization.generate_authorization_signature(
      private_key_base64: kp.private_key,
      payload: payload
    )
    der = sig_b64.unpack1("m0")
    digest = OpenSSL::Digest.new("SHA256").digest(payload)
    assert(pubkey.dsa_verify_asn1(digest, der))
  end

  def test_hpke_sender_recipient_round_trip
    recipient = Privy::Cryptography::HpkeRecipient.new
    encrypted = Privy::Cryptography::HpkeSender.new.encrypt(recipient.public_key_spki, "secret")

    assert_equal("secret", recipient.decrypt(encrypted.encapsulated_key, encrypted.ciphertext))
  end

  def test_hpke_sender_accepts_uncompressed_p256_public_key
    recipient = Privy::Cryptography::HpkeRecipient.new
    recipient_public_key = OpenSSL::PKey.read(recipient.public_key_spki).public_key.to_bn(:uncompressed).to_s(2)
    encrypted = Privy::Cryptography::HpkeSender.new.encrypt(recipient_public_key, "secret")

    assert_equal("secret", recipient.decrypt(encrypted.encapsulated_key, encrypted.ciphertext))
  end
end
