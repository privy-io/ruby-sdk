# typed: strong

module Privy
  module Models
    class HDInitInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::HDInitInput, Privy::Internal::AnyHash) }

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

      # The entropy type of the wallet to import.
      sig { returns(Privy::HDInitInput::EntropyType::OrSymbol) }
      attr_accessor :entropy_type

      # The index of the wallet to import.
      sig { returns(Integer) }
      attr_accessor :index

      # The input for HD wallets.
      sig do
        params(
          address: String,
          chain_type: Privy::WalletImportSupportedChains::OrSymbol,
          encryption_type: Privy::HpkeEncryption::OrSymbol,
          entropy_type: Privy::HDInitInput::EntropyType::OrSymbol,
          index: Integer
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
        # The entropy type of the wallet to import.
        entropy_type:,
        # The index of the wallet to import.
        index:
      )
      end

      sig do
        override.returns(
          {
            address: String,
            chain_type: Privy::WalletImportSupportedChains::OrSymbol,
            encryption_type: Privy::HpkeEncryption::OrSymbol,
            entropy_type: Privy::HDInitInput::EntropyType::OrSymbol,
            index: Integer
          }
        )
      end
      def to_hash
      end

      # The entropy type of the wallet to import.
      module EntropyType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::HDInitInput::EntropyType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HD = T.let(:hd, Privy::HDInitInput::EntropyType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::HDInitInput::EntropyType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
