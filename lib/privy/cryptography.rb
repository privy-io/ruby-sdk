# frozen_string_literal: true

require "openssl"
require "base64"
require "hpke"

module Privy
  module Cryptography
    class HpkeRecipient
      # @return [String] Raw DER bytes of the SPKI-encoded public key
      attr_reader :public_key_spki

      def initialize
        @ec_key = OpenSSL::PKey::EC.generate("prime256v1")
        @public_key_spki = @ec_key.public_to_der
        @hpke = HPKE.new(HPKE::DHKEM_P256_HKDF_SHA256, HPKE::HKDF_SHA256, HPKE::CHACHA20_POLY1305)
      end

      # Decrypts an HPKE-encrypted payload.
      #
      # @param encapsulated_key [String] Raw bytes of the encapsulated key from the sender
      # @param ciphertext [String] Raw bytes of the ciphertext to decrypt
      # @return [String] Decrypted plaintext bytes
      def decrypt(encapsulated_key, ciphertext)
        ctx = @hpke.setup_base_r(encapsulated_key, @ec_key, "")
        ctx.open("", ciphertext)
      end

      # @api private
      # @return [OpenSSL::PKey::PKey]
      def public_key_pkey
        OpenSSL::PKey.read(@public_key_spki)
      end
    end
  end
end
