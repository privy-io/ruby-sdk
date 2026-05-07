# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#_init_import
    class WalletInitImportResponse < Privy::Internal::Type::BaseModel
      # @!attribute encryption_public_key
      #   The base64-encoded encryption public key to encrypt the wallet entropy with.
      #
      #   @return [String]
      required :encryption_public_key, String

      # @!attribute encryption_type
      #   The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @return [Symbol, Privy::Models::HpkeEncryption]
      required :encryption_type, enum: -> { Privy::HpkeEncryption }

      # @!method initialize(encryption_public_key:, encryption_type:)
      #   @param encryption_public_key [String] The base64-encoded encryption public key to encrypt the wallet entropy with.
      #
      #   @param encryption_type [Symbol, Privy::Models::HpkeEncryption] The encryption type of the wallet to import. Currently only supports `HPKE`.
    end
  end
end
