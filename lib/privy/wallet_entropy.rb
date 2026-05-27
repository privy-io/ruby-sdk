# frozen_string_literal: true

require_relative "base58"

module Privy
  module WalletEntropy
    SECP256K1_ORDER = 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141

    module_function

    def entropy_to_bytes(entropy:, entropy_type:, chain_type:)
      case entropy_type.to_s
      when "hd"
        entropy.to_s.encode(Encoding::UTF_8).b
      when "private-key"
        private_key_to_bytes(entropy.to_s, chain_type.to_s)
      else
        raise Privy::Errors::Error, "Invalid entropy type: #{entropy_type}"
      end
    end

    def private_key_to_bytes(entropy, chain_type)
      case chain_type
      when "ethereum"
        ethereum_private_key_to_bytes(entropy)
      when "solana"
        solana_private_key_to_bytes(entropy)
      else
        raise Privy::Errors::Error, "Invalid chain type for imports: #{chain_type}"
      end
    end

    def ethereum_private_key_to_bytes(entropy)
      hex = entropy.start_with?("0x") ? entropy[2..] : entropy
      unless hex.match?(/\A[0-9a-fA-F]{64}\z/)
        raise Privy::Errors::Error,
              "Invalid private key: Ethereum entropy must be 64 hex characters (32 bytes)"
      end

      scalar = hex.to_i(16)
      if scalar.zero? || scalar >= SECP256K1_ORDER
        raise Privy::Errors::Error,
              "Invalid private key: Ethereum entropy must be in range [1, secp256k1 order)"
      end

      [hex].pack("H*")
    end

    def solana_private_key_to_bytes(entropy)
      if entropy.empty?
        raise Privy::Errors::Error,
              "Invalid private key: Solana entropy must be base58 encoded"
      end

      Privy::Base58.decode(entropy)
    rescue ArgumentError
      raise Privy::Errors::Error, "Invalid private key: Solana entropy must be base58 encoded"
    end
  end
end
