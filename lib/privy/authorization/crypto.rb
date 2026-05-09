# frozen_string_literal: true

require "openssl"

module Privy
  module Authorization
    module Crypto
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
    end
  end
end
