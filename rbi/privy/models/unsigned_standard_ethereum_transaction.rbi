# typed: strong

module Privy
  module Models
    class UnsignedStandardEthereumTransaction < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::UnsignedStandardEthereumTransaction,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Privy::EthereumSign7702Authorization])) }
      attr_reader :authorization_list

      sig do
        params(
          authorization_list:
            T::Array[Privy::EthereumSign7702Authorization::OrHash]
        ).void
      end
      attr_writer :authorization_list

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :chain_id

      sig { params(chain_id: Privy::Quantity::Variants).void }
      attr_writer :chain_id

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(T.nilable(String)) }
      attr_reader :data

      sig { params(data: String).void }
      attr_writer :data

      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :gas_limit

      sig { params(gas_limit: Privy::Quantity::Variants).void }
      attr_writer :gas_limit

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :gas_price

      sig { params(gas_price: Privy::Quantity::Variants).void }
      attr_writer :gas_price

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :max_fee_per_gas

      sig { params(max_fee_per_gas: Privy::Quantity::Variants).void }
      attr_writer :max_fee_per_gas

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :max_priority_fee_per_gas

      sig { params(max_priority_fee_per_gas: Privy::Quantity::Variants).void }
      attr_writer :max_priority_fee_per_gas

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :nonce

      sig { params(nonce: Privy::Quantity::Variants).void }
      attr_writer :nonce

      sig { returns(T.nilable(String)) }
      attr_reader :to

      sig { params(to: String).void }
      attr_writer :to

      sig do
        returns(
          T.nilable(Privy::UnsignedStandardEthereumTransaction::Type::OrFloat)
        )
      end
      attr_reader :type

      sig do
        params(
          type: Privy::UnsignedStandardEthereumTransaction::Type::OrFloat
        ).void
      end
      attr_writer :type

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :value

      sig { params(value: Privy::Quantity::Variants).void }
      attr_writer :value

      # An unsigned standard Ethereum transaction object. Supports EVM transaction types
      # 0, 1, 2, and 4.
      sig do
        params(
          authorization_list:
            T::Array[Privy::EthereumSign7702Authorization::OrHash],
          chain_id: Privy::Quantity::Variants,
          data: String,
          from: String,
          gas_limit: Privy::Quantity::Variants,
          gas_price: Privy::Quantity::Variants,
          max_fee_per_gas: Privy::Quantity::Variants,
          max_priority_fee_per_gas: Privy::Quantity::Variants,
          nonce: Privy::Quantity::Variants,
          to: String,
          type: Privy::UnsignedStandardEthereumTransaction::Type::OrFloat,
          value: Privy::Quantity::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        authorization_list: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        chain_id: nil,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        data: nil,
        from: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        gas_limit: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        gas_price: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        max_fee_per_gas: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        max_priority_fee_per_gas: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        nonce: nil,
        to: nil,
        type: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        value: nil
      )
      end

      sig do
        override.returns(
          {
            authorization_list: T::Array[Privy::EthereumSign7702Authorization],
            chain_id: Privy::Quantity::Variants,
            data: String,
            from: String,
            gas_limit: Privy::Quantity::Variants,
            gas_price: Privy::Quantity::Variants,
            max_fee_per_gas: Privy::Quantity::Variants,
            max_priority_fee_per_gas: Privy::Quantity::Variants,
            nonce: Privy::Quantity::Variants,
            to: String,
            type: Privy::UnsignedStandardEthereumTransaction::Type::OrFloat,
            value: Privy::Quantity::Variants
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedFloat =
          T.type_alias do
            T.all(Float, Privy::UnsignedStandardEthereumTransaction::Type)
          end
        OrFloat = T.type_alias { Float }

        TYPE_0 =
          T.let(
            0,
            Privy::UnsignedStandardEthereumTransaction::Type::TaggedFloat
          )
        TYPE_1 =
          T.let(
            1,
            Privy::UnsignedStandardEthereumTransaction::Type::TaggedFloat
          )
        TYPE_2 =
          T.let(
            2,
            Privy::UnsignedStandardEthereumTransaction::Type::TaggedFloat
          )
        TYPE_4 =
          T.let(
            4,
            Privy::UnsignedStandardEthereumTransaction::Type::TaggedFloat
          )

        sig do
          override.returns(
            T::Array[
              Privy::UnsignedStandardEthereumTransaction::Type::TaggedFloat
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
