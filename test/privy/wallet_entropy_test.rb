# frozen_string_literal: true

require_relative "test_helper"

class Privy::WalletEntropyTest < Minitest::Test
  SECP256K1_ORDER = 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141

  # --- Ethereum private key validation ---------------------------------------

  def test_ethereum_accepts_valid_64_char_hex
    hex = "1".rjust(64, "0")
    bytes = Privy::WalletEntropy.entropy_to_bytes(
      entropy: hex,
      entropy_type: :"private-key",
      chain_type: :ethereum
    )
    assert_equal(32, bytes.bytesize)
  end

  def test_ethereum_accepts_0x_prefixed_hex
    hex = "0x#{'1'.rjust(64, '0')}"
    bytes = Privy::WalletEntropy.entropy_to_bytes(
      entropy: hex,
      entropy_type: :"private-key",
      chain_type: :ethereum
    )
    assert_equal(32, bytes.bytesize)
  end

  def test_ethereum_rejects_short_hex
    err = assert_raises(Privy::Errors::Error) do
      Privy::WalletEntropy.entropy_to_bytes(
        entropy: "00",
        entropy_type: :"private-key",
        chain_type: :ethereum
      )
    end
    assert_match(/64 hex/i, err.message)
  end

  def test_ethereum_rejects_31_byte_hex
    hex = "1".rjust(62, "0")
    assert_raises(Privy::Errors::Error) do
      Privy::WalletEntropy.entropy_to_bytes(
        entropy: hex,
        entropy_type: :"private-key",
        chain_type: :ethereum
      )
    end
  end

  def test_ethereum_rejects_33_byte_hex
    hex = "1".rjust(66, "0")
    assert_raises(Privy::Errors::Error) do
      Privy::WalletEntropy.entropy_to_bytes(
        entropy: hex,
        entropy_type: :"private-key",
        chain_type: :ethereum
      )
    end
  end

  def test_ethereum_rejects_zero_scalar
    hex = "0" * 64
    err = assert_raises(Privy::Errors::Error) do
      Privy::WalletEntropy.entropy_to_bytes(
        entropy: hex,
        entropy_type: :"private-key",
        chain_type: :ethereum
      )
    end
    assert_match(/range/i, err.message)
  end

  def test_ethereum_rejects_scalar_equal_to_secp256k1_order
    hex = SECP256K1_ORDER.to_s(16).rjust(64, "0")
    err = assert_raises(Privy::Errors::Error) do
      Privy::WalletEntropy.entropy_to_bytes(
        entropy: hex,
        entropy_type: :"private-key",
        chain_type: :ethereum
      )
    end
    assert_match(/range/i, err.message)
  end

  def test_ethereum_rejects_scalar_greater_than_secp256k1_order
    hex = (SECP256K1_ORDER + 1).to_s(16).rjust(64, "0")
    assert_raises(Privy::Errors::Error) do
      Privy::WalletEntropy.entropy_to_bytes(
        entropy: hex,
        entropy_type: :"private-key",
        chain_type: :ethereum
      )
    end
  end

  def test_ethereum_accepts_scalar_just_below_order
    hex = (SECP256K1_ORDER - 1).to_s(16).rjust(64, "0")
    bytes = Privy::WalletEntropy.entropy_to_bytes(
      entropy: hex,
      entropy_type: :"private-key",
      chain_type: :ethereum
    )
    assert_equal(32, bytes.bytesize)
  end
end
