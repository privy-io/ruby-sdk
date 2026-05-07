# frozen_string_literal: true

module Privy
  module Models
    class PrivateKeyInitInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #   The address of the wallet to import.
      #
      #   @return [String]
      required :address, String

      # @!attribute chain_type
      #   The chain type of the wallet to import. Currently supports `ethereum` and
      #   `solana`.
      #
      #   @return [Symbol, Privy::Models::WalletImportSupportedChains]
      required :chain_type, enum: -> { Privy::WalletImportSupportedChains }

      # @!attribute encryption_type
      #   The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @return [Symbol, Privy::Models::HpkeEncryption]
      required :encryption_type, enum: -> { Privy::HpkeEncryption }

      # @!attribute entropy_type
      #
      #   @return [Symbol, Privy::Models::PrivateKeyInitInput::EntropyType]
      required :entropy_type, enum: -> { Privy::PrivateKeyInitInput::EntropyType }

      # @!method initialize(address:, chain_type:, encryption_type:, entropy_type:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::PrivateKeyInitInput} for more details.
      #
      #   The input for private key wallets.
      #
      #   @param address [String] The address of the wallet to import.
      #
      #   @param chain_type [Symbol, Privy::Models::WalletImportSupportedChains] The chain type of the wallet to import. Currently supports `ethereum` and `solan
      #
      #   @param encryption_type [Symbol, Privy::Models::HpkeEncryption] The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @param entropy_type [Symbol, Privy::Models::PrivateKeyInitInput::EntropyType]

      # @see Privy::Models::PrivateKeyInitInput#entropy_type
      module EntropyType
        extend Privy::Internal::Type::Enum

        PRIVATE_KEY = :"private-key"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
