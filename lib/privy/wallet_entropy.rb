# frozen_string_literal: true

module Privy
  module WalletEntropy
    BASE58_ALPHABET = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"
    BASE58_INDEX = BASE58_ALPHABET.chars.each_with_index.to_h.freeze

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
      unless hex.match?(/\A(?:[0-9a-fA-F]{2})+\z/)
        raise Privy::Errors::Error, "Invalid private key: Ethereum entropy must be hex encoded"
      end

      [hex].pack("H*")
    end

    def solana_private_key_to_bytes(entropy)
      if entropy.empty?
        raise Privy::Errors::Error,
              "Invalid private key: Solana entropy must be base58 encoded"
      end

      value = 0
      entropy.each_char do |char|
        digit = BASE58_INDEX[char]
        raise Privy::Errors::Error, "Invalid private key: Solana entropy must be base58 encoded" if digit.nil?

        value = (value * 58) + digit
      end

      bytes = []
      while value.positive?
        bytes.unshift(value & 0xff)
        value >>= 8
      end

      leading_zeroes = entropy.each_char.take_while { |char| char == "1" }.length
      ("\x00".b * leading_zeroes) + bytes.pack("C*")
    end
  end
end
