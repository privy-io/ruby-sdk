# frozen_string_literal: true

module Privy
  module Base58
    ALPHABET = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"
    INDEX = ALPHABET.chars.each_with_index.to_h.freeze

    module_function

    def encode(bytes)
      integer = bytes.unpack1("H*").to_i(16)
      encoded = +""
      while integer.positive?
        integer, remainder = integer.divmod(58)
        encoded.prepend(ALPHABET[remainder])
      end

      leading_zeroes = bytes.bytes.take_while(&:zero?).length
      ("1" * leading_zeroes) + encoded
    end

    def decode(value)
      integer = 0
      value.each_char do |char|
        digit = INDEX[char]
        raise ArgumentError, "invalid base58 character: #{char.inspect}" if digit.nil?

        integer = (integer * 58) + digit
      end

      bytes = []
      while integer.positive?
        bytes.unshift(integer & 0xff)
        integer >>= 8
      end

      leading_zeroes = value.each_char.take_while { |char| char == "1" }.length
      ("\x00".b * leading_zeroes) + bytes.pack("C*")
    end
  end
end
