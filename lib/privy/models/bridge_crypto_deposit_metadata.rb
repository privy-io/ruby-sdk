# frozen_string_literal: true

module Privy
  module Models
    class BridgeCryptoDepositMetadata < Privy::Internal::Type::BaseModel
      # @!attribute drain_id
      #
      #   @return [String]
      required :drain_id, String

      # @!attribute liquidation_address
      #   The crypto address of the liquidation address that received the deposit.
      #
      #   @return [String]
      required :liquidation_address, String

      # @!attribute liquidation_address_id
      #
      #   @return [String]
      required :liquidation_address_id, String

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::BridgeCryptoDepositMetadata::Method]
      required :method_, enum: -> { Privy::BridgeCryptoDepositMetadata::Method }, api_name: :method

      # @!attribute source_wallet_address
      #   The address that sent the deposit.
      #
      #   @return [String]
      required :source_wallet_address, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::BridgeCryptoDepositMetadata::Type]
      required :type, enum: -> { Privy::BridgeCryptoDepositMetadata::Type }

      # @!method initialize(drain_id:, liquidation_address:, liquidation_address_id:, method_:, source_wallet_address:, type:)
      #   Bridge metadata for a crypto deposit via liquidation address.
      #
      #   @param drain_id [String]
      #
      #   @param liquidation_address [String] The crypto address of the liquidation address that received the deposit.
      #
      #   @param liquidation_address_id [String]
      #
      #   @param method_ [Symbol, Privy::Models::BridgeCryptoDepositMetadata::Method]
      #
      #   @param source_wallet_address [String] The address that sent the deposit.
      #
      #   @param type [Symbol, Privy::Models::BridgeCryptoDepositMetadata::Type]

      # @see Privy::Models::BridgeCryptoDepositMetadata#method_
      module Method
        extend Privy::Internal::Type::Enum

        LIQUIDATION_ADDRESS = :liquidation_address

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::BridgeCryptoDepositMetadata#type
      module Type
        extend Privy::Internal::Type::Enum

        CRYPTO_DEPOSIT = :crypto_deposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
