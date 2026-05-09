# frozen_string_literal: true

require "openssl"
require "base64"
require "hpke"

module Privy
  module Cryptography
    P256KeyPair = Data.define(:public_key, :private_key)

    # Returns a P256KeyPair with base64-encoded SPKI (public) and PKCS8 (private) keys.
    def self.generate_p256_key_pair
      key = OpenSSL::PKey::EC.generate("prime256v1")
      P256KeyPair.new(
        public_key: [key.public_to_der].pack("m0"),
        private_key: [key.private_to_der].pack("m0")
      )
    end

    def self.import_pkcs8_private_key(base64_pkcs8)
      der = base64_pkcs8.unpack1("m0")
      OpenSSL::PKey.read(der)
    end

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
