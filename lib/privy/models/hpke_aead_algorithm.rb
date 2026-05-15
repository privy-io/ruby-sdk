# frozen_string_literal: true

module Privy
  module Models
    # The AEAD algorithm used for HPKE encryption.
    module HpkeAeadAlgorithm
      extend Privy::Internal::Type::Enum

      CHACHA20_POLY1305 = :CHACHA20_POLY1305
      AES_GCM256 = :AES_GCM256

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
