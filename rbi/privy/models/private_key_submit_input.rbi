# typed: strong

module Privy
  module Models
    class PrivateKeySubmitInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PrivateKeySubmitInput, Privy::Internal::AnyHash)
        end

      # The address of the wallet to import.
      sig { returns(String) }
      attr_accessor :address

      # The chain type of the wallet to import. Currently supports `ethereum` and
      # `solana`.
      sig { returns(Privy::WalletImportSupportedChains::OrSymbol) }
      attr_accessor :chain_type

      # The encrypted entropy of the wallet to import.
      sig { returns(String) }
      attr_accessor :ciphertext

      # The base64-encoded encapsulated key that was generated during encryption, for
      # use during decryption inside the TEE.
      sig { returns(String) }
      attr_accessor :encapsulated_key

      # The encryption type of the wallet to import. Currently only supports `HPKE`.
      sig { returns(Privy::HpkeEncryption::OrSymbol) }
      attr_accessor :encryption_type

      sig { returns(Privy::PrivateKeySubmitInput::EntropyType::OrSymbol) }
      attr_accessor :entropy_type

      # Optional HPKE configuration for wallet import decryption. These parameters allow
      # importing wallets encrypted by external providers that use different HPKE
      # configurations.
      sig { returns(T.nilable(Privy::HpkeImportConfig)) }
      attr_reader :hpke_config

      sig { params(hpke_config: Privy::HpkeImportConfig::OrHash).void }
      attr_writer :hpke_config

      # The submission input for importing a private key wallet.
      sig do
        params(
          address: String,
          chain_type: Privy::WalletImportSupportedChains::OrSymbol,
          ciphertext: String,
          encapsulated_key: String,
          encryption_type: Privy::HpkeEncryption::OrSymbol,
          entropy_type: Privy::PrivateKeySubmitInput::EntropyType::OrSymbol,
          hpke_config: Privy::HpkeImportConfig::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The address of the wallet to import.
        address:,
        # The chain type of the wallet to import. Currently supports `ethereum` and
        # `solana`.
        chain_type:,
        # The encrypted entropy of the wallet to import.
        ciphertext:,
        # The base64-encoded encapsulated key that was generated during encryption, for
        # use during decryption inside the TEE.
        encapsulated_key:,
        # The encryption type of the wallet to import. Currently only supports `HPKE`.
        encryption_type:,
        entropy_type:,
        # Optional HPKE configuration for wallet import decryption. These parameters allow
        # importing wallets encrypted by external providers that use different HPKE
        # configurations.
        hpke_config: nil
      )
      end

      sig do
        override.returns(
          {
            address: String,
            chain_type: Privy::WalletImportSupportedChains::OrSymbol,
            ciphertext: String,
            encapsulated_key: String,
            encryption_type: Privy::HpkeEncryption::OrSymbol,
            entropy_type: Privy::PrivateKeySubmitInput::EntropyType::OrSymbol,
            hpke_config: Privy::HpkeImportConfig
          }
        )
      end
      def to_hash
      end

      module EntropyType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::PrivateKeySubmitInput::EntropyType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIVATE_KEY =
          T.let(
            :"private-key",
            Privy::PrivateKeySubmitInput::EntropyType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::PrivateKeySubmitInput::EntropyType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
