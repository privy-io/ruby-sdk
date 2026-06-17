# frozen_string_literal: true

module Privy
  module Models
    class HDInitInput < Privy::Internal::Type::BaseModel
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

      # @!attribute encryption_type
      #   The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @return [Symbol, Privy::Models::HpkeEncryption]
      required :encryption_type, enum: -> { Privy::HpkeEncryption }

      # @!attribute entropy_type
      #   The entropy type of the wallet to import.
      #
      #   @return [Symbol, Privy::Models::HDInitInput::EntropyType]
      required :entropy_type, enum: -> { Privy::HDInitInput::EntropyType }

      # @!attribute index
      #   The index of the wallet to import.
      #
      #   @return [Integer]
      required :index, Integer

      # @!method initialize(address:, chain_type:, encryption_type:, entropy_type:, index:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::HDInitInput} for more details.
      #
      #   The input for HD wallets.
      #
      #   @param address [String] The address of the wallet to import.
      #
      #   @param chain_type [Symbol, Privy::Models::WalletImportSupportedChains] The chain type of the wallet to import. Supports `ethereum`, `solana`, `stellar`
      #
      #   @param encryption_type [Symbol, Privy::Models::HpkeEncryption] The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @param entropy_type [Symbol, Privy::Models::HDInitInput::EntropyType] The entropy type of the wallet to import.
      #
      #   @param index [Integer] The index of the wallet to import.

      # The entropy type of the wallet to import.
      #
      # @see Privy::Models::HDInitInput#entropy_type
      module EntropyType
        extend Privy::Internal::Type::Enum

        HD = :hd

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
