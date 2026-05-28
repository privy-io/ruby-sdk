# frozen_string_literal: true

require "openssl"
require "securerandom"

require_relative "../../../../lib/privy/base58"

module Privy
  module Test
    module Integration
      # Test-only wallet entropy generator. This exists solely to create unique
      # import fixtures for integration tests. It makes no cryptographic or
      # security guarantees at all and must never be used for production wallet
      # generation.
      module WalletEntropyFactory
        GeneratedWallet = Data.define(:chain_type, :address, :entropy_type, :private_key, :index)

        BIP39_FIRST_16_WORDS = %w[
          abandon
          ability
          able
          about
          above
          absent
          absorb
          abstract
          absurd
          abuse
          access
          accident
          account
          accuse
          achieve
          acid
        ].freeze

        SECP256K1_GROUP = OpenSSL::PKey::EC::Group.new("secp256k1")
        SECP256K1_ORDER = 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141
        BIP32_HARDENED_OFFSET = 0x80000000
        KECCAKF_ROUNDS = 24
        KECCAKF_ROTATION = [
          [0, 36, 3, 41, 18],
          [1, 44, 10, 45, 2],
          [62, 6, 43, 15, 61],
          [28, 55, 25, 21, 56],
          [27, 20, 39, 8, 14]
        ].freeze
        KECCAKF_ROUND_CONSTANTS = [
          0x0000000000000001,
          0x0000000000008082,
          0x800000000000808a,
          0x8000000080008000,
          0x000000000000808b,
          0x0000000080000001,
          0x8000000080008081,
          0x8000000000008009,
          0x000000000000008a,
          0x0000000000000088,
          0x0000000080008009,
          0x000000008000000a,
          0x000000008000808b,
          0x800000000000008b,
          0x8000000000008089,
          0x8000000000008003,
          0x8000000000008002,
          0x8000000000000080,
          0x000000000000800a,
          0x800000008000000a,
          0x8000000080008081,
          0x8000000000008080,
          0x0000000080000001,
          0x8000000080008008
        ].freeze

        module_function

        def ethereum_private_key
          private_key = random_secp256k1_private_key
          GeneratedWallet.new(
            chain_type: :ethereum,
            address: ethereum_address_from_private_key(private_key),
            entropy_type: :"private-key",
            private_key: private_key.unpack1("H*"),
            index: nil
          )
        end

        def solana_private_key
          seed = SecureRandom.random_bytes(32)
          public_key = ed25519_public_key_from_seed(seed)
          GeneratedWallet.new(
            chain_type: :solana,
            address: Privy::Base58.encode(public_key),
            entropy_type: :"private-key",
            private_key: Privy::Base58.encode(seed + public_key),
            index: nil
          )
        end

        def ethereum_seed_phrase
          seed_phrase = mnemonic
          private_key = ethereum_private_key_from_mnemonic(seed_phrase)
          GeneratedWallet.new(
            chain_type: :ethereum,
            address: ethereum_address_from_private_key(private_key),
            entropy_type: :hd,
            private_key: seed_phrase,
            index: 0
          )
        end

        def solana_seed_phrase
          seed_phrase = mnemonic
          GeneratedWallet.new(
            chain_type: :solana,
            address: solana_address_from_mnemonic(seed_phrase),
            entropy_type: :hd,
            private_key: seed_phrase,
            index: 0
          )
        end

        def mnemonic
          indexes = Array.new(11) { SecureRandom.random_number(16) }
          entropy_bits = indexes.map { |index| index.to_s(2).rjust(11, "0") }.join
          entropy_bits += "0" * 7
          entropy = [entropy_bits].pack("B*")
          checksum = OpenSSL::Digest::SHA256.digest(entropy).unpack1("B*").byteslice(0, 4).to_i(2)
          BIP39_FIRST_16_WORDS.values_at(*indexes, checksum).join(" ")
        end

        def random_secp256k1_private_key
          loop do
            value = SecureRandom.random_bytes(32).unpack1("H*").to_i(16)
            next if value.zero? || value >= SECP256K1_ORDER

            return int_to_32_bytes(value)
          end
        end

        def secp256k1_public_key(private_key, compressed:)
          point = SECP256K1_GROUP.generator.mul(OpenSSL::BN.new(private_key.unpack1("H*"), 16))
          uncompressed = point.to_octet_string(:uncompressed)
          return uncompressed unless compressed

          x = uncompressed.byteslice(1, 32)
          y = uncompressed.byteslice(33, 32)
          prefix = y.bytes.last.even? ? "\x02" : "\x03"
          prefix.b + x
        end

        def ethereum_address_from_private_key(private_key)
          public_key = secp256k1_public_key(private_key, compressed: false)
          "0x#{keccak256(public_key.byteslice(1, 64)).byteslice(12, 20).unpack1('H*')}"
        end

        def ethereum_private_key_from_mnemonic(seed_phrase)
          seed = bip39_seed(seed_phrase)
          private_key, chain_code = hmac_sha512("Bitcoin seed", seed).unpack("a32a32")
          [44, 60, 0].each do |index|
            private_key, chain_code = derive_bip32_child(
              private_key,
              chain_code,
              index + BIP32_HARDENED_OFFSET
            )
          end
          private_key, chain_code = derive_bip32_child(private_key, chain_code, 0)
          private_key, = derive_bip32_child(private_key, chain_code, 0)
          private_key
        end

        def solana_address_from_mnemonic(seed_phrase)
          seed = bip39_seed(seed_phrase)
          private_key, chain_code = hmac_sha512("ed25519 seed", seed).unpack("a32a32")
          [44, 501, 0, 0].each do |index|
            private_key, chain_code = derive_slip10_ed25519_child(
              private_key,
              chain_code,
              index + BIP32_HARDENED_OFFSET
            )
          end
          Privy::Base58.encode(ed25519_public_key_from_seed(private_key))
        end

        def bip39_seed(seed_phrase)
          OpenSSL::PKCS5.pbkdf2_hmac(
            seed_phrase,
            "mnemonic",
            2048,
            64,
            OpenSSL::Digest.new("SHA512")
          )
        end

        def hmac_sha512(key, data)
          OpenSSL::HMAC.digest("SHA512", key, data)
        end

        def derive_bip32_child(private_key, chain_code, index)
          data =
            if index >= BIP32_HARDENED_OFFSET
              "\x00".b + private_key + [index].pack("N")
            else
              secp256k1_public_key(private_key, compressed: true) + [index].pack("N")
            end
          left, right = hmac_sha512(chain_code, data).unpack("a32a32")
          child_key = (left.unpack1("H*").to_i(16) + private_key.unpack1("H*").to_i(16)) % SECP256K1_ORDER
          [int_to_32_bytes(child_key), right]
        end

        def derive_slip10_ed25519_child(private_key, chain_code, index)
          hmac_sha512(chain_code, "\x00".b + private_key + [index].pack("N")).unpack("a32a32")
        end

        def ed25519_public_key_from_seed(seed)
          OpenSSL::PKey.read(["302e020100300506032b657004220420"].pack("H*") + seed).raw_public_key
        end

        def int_to_32_bytes(value)
          [value.to_s(16).rjust(64, "0")].pack("H*")
        end

        def keccak256(message)
          rate = 136
          state = Array.new(25, 0)
          padded = message.b + "\x01".b
          padded += "\x00".b * ((rate - ((padded.bytesize + 1) % rate)) % rate)
          padded += "\x80".b

          padded.bytes.each_slice(rate) do |block|
            block.each_slice(8).with_index do |lane, i|
              state[i] ^= lane.pack("C*").ljust(8, "\x00").unpack1("Q<")
            end
            keccakf(state)
          end

          state.first(rate / 8).pack("Q<*").byteslice(0, 32)
        end

        def keccakf(state)
          mask = 0xffffffffffffffff
          KECCAKF_ROUNDS.times do |round|
            c = 5.times.map { |x| state[x] ^ state[x + 5] ^ state[x + 10] ^ state[x + 15] ^ state[x + 20] }
            d = 5.times.map { |x| c[(x + 4) % 5] ^ rotl64(c[(x + 1) % 5], 1) }
            5.times do |x|
              5.times { |y| state[x + (5 * y)] = (state[x + (5 * y)] ^ d[x]) & mask }
            end

            b = Array.new(25, 0)
            5.times do |x|
              5.times do |y|
                b[y + (5 * (((2 * x) + (3 * y)) % 5))] = rotl64(state[x + (5 * y)], KECCAKF_ROTATION[x][y])
              end
            end

            5.times do |x|
              5.times do |y|
                state[x + (5 * y)] =
                  (b[x + (5 * y)] ^ ((~b[((x + 1) % 5) + (5 * y)]) & b[((x + 2) % 5) + (5 * y)])) & mask
              end
            end
            state[0] = (state[0] ^ KECCAKF_ROUND_CONSTANTS[round]) & mask
          end
        end

        def rotl64(value, shift)
          return value & 0xffffffffffffffff if shift.zero?

          ((value << shift) | (value >> (64 - shift))) & 0xffffffffffffffff
        end
      end
    end
  end
end
