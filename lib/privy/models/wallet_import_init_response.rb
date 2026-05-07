# frozen_string_literal: true

module Privy
  module Models
    class WalletImportInitResponse < Privy::Internal::Type::BaseModel
      # @!attribute encryption_public_key
      #
      #   @return [String]
      required :encryption_public_key, String

      # @!attribute encryption_type
      #   The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @return [Symbol, Privy::Models::HpkeEncryption]
      required :encryption_type, enum: -> { Privy::HpkeEncryption }

      # @!attribute import_id
      #
      #   @return [String, nil]
      optional :import_id, String

      # @!method initialize(encryption_public_key:, encryption_type:, import_id: nil)
      #   Response from initializing a wallet import, containing the encryption public
      #   key.
      #
      #   @param encryption_public_key [String]
      #
      #   @param encryption_type [Symbol, Privy::Models::HpkeEncryption] The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @param import_id [String]
    end
  end
end
