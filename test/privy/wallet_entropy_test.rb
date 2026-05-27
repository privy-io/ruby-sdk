# frozen_string_literal: true

require_relative "test_helper"

class Privy::WalletEntropyTest < Minitest::Test
  def test_hd_entropy_is_utf8
    bytes = Privy::WalletEntropy.entropy_to_bytes(
      entropy: "test test test junk",
      entropy_type: :hd,
      chain_type: :ethereum
    )

    assert_equal("test test test junk", bytes)
    assert_equal(Encoding::ASCII_8BIT, bytes.encoding)
  end

  def test_ethereum_private_key_entropy_is_hex_decoded
    bytes = Privy::WalletEntropy.entropy_to_bytes(
      entropy: "0x000102ff",
      entropy_type: :"private-key",
      chain_type: :ethereum
    )

    assert_equal([0, 1, 2, 255].pack("C*"), bytes)
  end

  def test_ethereum_private_key_entropy_rejects_invalid_hex
    error = assert_raises(Privy::Errors::Error) do
      Privy::WalletEntropy.entropy_to_bytes(
        entropy: "0xnot-hex",
        entropy_type: :"private-key",
        chain_type: :ethereum
      )
    end

    assert_equal("Invalid private key: Ethereum entropy must be hex encoded", error.message)
  end

  def test_solana_private_key_entropy_is_base58_decoded
    bytes = Privy::WalletEntropy.entropy_to_bytes(
      entropy: "1112",
      entropy_type: :"private-key",
      chain_type: :solana
    )

    assert_equal([0, 0, 0, 1].pack("C*"), bytes)
  end

  def test_solana_private_key_entropy_rejects_invalid_base58
    error = assert_raises(Privy::Errors::Error) do
      Privy::WalletEntropy.entropy_to_bytes(
        entropy: "0OIl",
        entropy_type: :"private-key",
        chain_type: :solana
      )
    end

    assert_equal("Invalid private key: Solana entropy must be base58 encoded", error.message)
  end
end
