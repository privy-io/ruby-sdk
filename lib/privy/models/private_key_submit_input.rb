# frozen_string_literal: true

module Privy
  module Models
    class PrivateKeySubmitInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #   The address of the wallet to import.
      #
      #   @return [String]
      required :address, String

      # @!attribute chain_type
      #   The chain type of the wallet to import. Supports `ethereum`, `solana`,
      #   `stellar`, `tron`, `sui`, and `aptos`.
      #
      #   @return [Symbol, Privy::Models::WalletImportSupportedChains]
      required :chain_type, enum: -> { Privy::WalletImportSupportedChains }

      # @!attribute ciphertext
      #   The encrypted entropy of the wallet to import.
      #
      #   @return [String]
      required :ciphertext, String

      # @!attribute encapsulated_key
      #   The base64-encoded encapsulated key that was generated during encryption, for
      #   use during decryption inside the TEE.
      #
      #   @return [String]
      required :encapsulated_key, String

      # @!attribute encryption_type
      #   The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @return [Symbol, Privy::Models::HpkeEncryption]
      required :encryption_type, enum: -> { Privy::HpkeEncryption }

      # @!attribute entropy_type
      #
      #   @return [Symbol, Privy::Models::PrivateKeySubmitInput::EntropyType]
      required :entropy_type, enum: -> { Privy::PrivateKeySubmitInput::EntropyType }

      # @!attribute hpke_config
      #   Optional HPKE configuration for wallet import decryption. These parameters allow
      #   importing wallets encrypted by external providers that use different HPKE
      #   configurations.
      #
      #   @return [Privy::Models::HpkeImportConfig, nil]
      optional :hpke_config, -> { Privy::HpkeImportConfig }

      # @!method initialize(address:, chain_type:, ciphertext:, encapsulated_key:, encryption_type:, entropy_type:, hpke_config: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::PrivateKeySubmitInput} for more details.
      #
      #   The submission input for importing a private key wallet.
      #
      #   @param address [String] The address of the wallet to import.
      #
      #   @param chain_type [Symbol, Privy::Models::WalletImportSupportedChains] The chain type of the wallet to import. Supports `ethereum`, `solana`, `stellar`
      #
      #   @param ciphertext [String] The encrypted entropy of the wallet to import.
      #
      #   @param encapsulated_key [String] The base64-encoded encapsulated key that was generated during encryption, for us
      #
      #   @param encryption_type [Symbol, Privy::Models::HpkeEncryption] The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @param entropy_type [Symbol, Privy::Models::PrivateKeySubmitInput::EntropyType]
      #
      #   @param hpke_config [Privy::Models::HpkeImportConfig] Optional HPKE configuration for wallet import decryption. These parameters allow

      # @see Privy::Models::PrivateKeySubmitInput#entropy_type
      module EntropyType
        extend Privy::Internal::Type::Enum

        PRIVATE_KEY = :"private-key"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
