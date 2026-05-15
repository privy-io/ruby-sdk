# frozen_string_literal: true

module Privy
  module Models
    class UnsignedStandardEthereumTransaction < Privy::Internal::Type::BaseModel
      # @!attribute authorization_list
      #
      #   @return [Array<Privy::Models::EthereumSign7702Authorization>, nil]
      optional :authorization_list, -> { Privy::Internal::Type::ArrayOf[Privy::EthereumSign7702Authorization] }

      # @!attribute chain_id
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :chain_id, union: -> { Privy::Quantity }

      # @!attribute data
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String, nil]
      optional :data, String

      # @!attribute from
      #
      #   @return [String, nil]
      optional :from, String

      # @!attribute gas_limit
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :gas_limit, union: -> { Privy::Quantity }

      # @!attribute gas_price
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :gas_price, union: -> { Privy::Quantity }

      # @!attribute max_fee_per_gas
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :max_fee_per_gas, union: -> { Privy::Quantity }

      # @!attribute max_priority_fee_per_gas
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :max_priority_fee_per_gas, union: -> { Privy::Quantity }

      # @!attribute nonce
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :nonce, union: -> { Privy::Quantity }

      # @!attribute to
      #
      #   @return [String, nil]
      optional :to, String

      # @!attribute type
      #
      #   @return [Float, Privy::Models::UnsignedStandardEthereumTransaction::Type, nil]
      optional :type, enum: -> { Privy::UnsignedStandardEthereumTransaction::Type }

      # @!attribute value
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :value, union: -> { Privy::Quantity }

      # @!method initialize(authorization_list: nil, chain_id: nil, data: nil, from: nil, gas_limit: nil, gas_price: nil, max_fee_per_gas: nil, max_priority_fee_per_gas: nil, nonce: nil, to: nil, type: nil, value: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::UnsignedStandardEthereumTransaction} for more details.
      #
      #   An unsigned standard Ethereum transaction object. Supports EVM transaction types
      #   0, 1, 2, and 4.
      #
      #   @param authorization_list [Array<Privy::Models::EthereumSign7702Authorization>]
      #
      #   @param chain_id [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param data [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param from [String]
      #
      #   @param gas_limit [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param gas_price [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param max_fee_per_gas [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param max_priority_fee_per_gas [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param nonce [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param to [String]
      #
      #   @param type [Float, Privy::Models::UnsignedStandardEthereumTransaction::Type]
      #
      #   @param value [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg

      # @see Privy::Models::UnsignedStandardEthereumTransaction#type
      module Type
        extend Privy::Internal::Type::Enum

        TYPE_0 = 0
        TYPE_1 = 1
        TYPE_2 = 2
        TYPE_4 = 4

        # @!method self.values
        #   @return [Array<Float>]
      end
    end
  end
end
