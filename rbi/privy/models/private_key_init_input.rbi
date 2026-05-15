# typed: strong

module Privy
  module Models
    class PrivateKeyInitInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PrivateKeyInitInput, Privy::Internal::AnyHash)
        end

      # The address of the wallet to import.
      sig { returns(String) }
      attr_accessor :address

      # The chain type of the wallet to import. Currently supports `ethereum` and
      # `solana`.
      sig { returns(Privy::WalletImportSupportedChains::OrSymbol) }
      attr_accessor :chain_type

      # The encryption type of the wallet to import. Currently only supports `HPKE`.
      sig { returns(Privy::HpkeEncryption::OrSymbol) }
      attr_accessor :encryption_type

      sig { returns(Privy::PrivateKeyInitInput::EntropyType::OrSymbol) }
      attr_accessor :entropy_type

      # The input for private key wallets.
      sig do
        params(
          address: String,
          chain_type: Privy::WalletImportSupportedChains::OrSymbol,
          encryption_type: Privy::HpkeEncryption::OrSymbol,
          entropy_type: Privy::PrivateKeyInitInput::EntropyType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The address of the wallet to import.
        address:,
        # The chain type of the wallet to import. Currently supports `ethereum` and
        # `solana`.
        chain_type:,
        # The encryption type of the wallet to import. Currently only supports `HPKE`.
        encryption_type:,
        entropy_type:
      )
      end

      sig do
        override.returns(
          {
            address: String,
            chain_type: Privy::WalletImportSupportedChains::OrSymbol,
            encryption_type: Privy::HpkeEncryption::OrSymbol,
            entropy_type: Privy::PrivateKeyInitInput::EntropyType::OrSymbol
          }
        )
      end
      def to_hash
      end

      module EntropyType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::PrivateKeyInitInput::EntropyType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIVATE_KEY =
          T.let(
            :"private-key",
            Privy::PrivateKeyInitInput::EntropyType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::PrivateKeyInitInput::EntropyType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
