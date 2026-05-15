# frozen_string_literal: true

module Privy
  module Models
    class HpkeImportConfig < Privy::Internal::Type::BaseModel
      # @!attribute aad
      #   Additional Authenticated Data (AAD) used during encryption. Should be
      #   base64-encoded bytes.
      #
      #   @return [String, nil]
      optional :aad, String

      # @!attribute aead_algorithm
      #   The AEAD algorithm used for HPKE encryption.
      #
      #   @return [Symbol, Privy::Models::HpkeAeadAlgorithm, nil]
      optional :aead_algorithm, enum: -> { Privy::HpkeAeadAlgorithm }

      # @!attribute info
      #   Application-specific context information (INFO) used during HPKE encryption.
      #   Should be base64-encoded bytes.
      #
      #   @return [String, nil]
      optional :info, String

      # @!method initialize(aad: nil, aead_algorithm: nil, info: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::HpkeImportConfig} for more details.
      #
      #   Optional HPKE configuration for wallet import decryption. These parameters allow
      #   importing wallets encrypted by external providers that use different HPKE
      #   configurations.
      #
      #   @param aad [String] Additional Authenticated Data (AAD) used during encryption. Should be base64-enc
      #
      #   @param aead_algorithm [Symbol, Privy::Models::HpkeAeadAlgorithm] The AEAD algorithm used for HPKE encryption.
      #
      #   @param info [String] Application-specific context information (INFO) used during HPKE encryption. Sho
    end
  end
end
