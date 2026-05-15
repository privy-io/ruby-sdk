# typed: strong

module Privy
  module Models
    class TransactionScanningParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransactionScanningParams, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :block_tag

      sig { params(block_tag: String).void }
      attr_writer :block_tag

      # Decoded calldata from a scanned transaction.
      sig { returns(T.nilable(Privy::TransactionScanningCalldata)) }
      attr_reader :calldata

      sig { params(calldata: Privy::TransactionScanningCalldata::OrHash).void }
      attr_writer :calldata

      sig { returns(T.nilable(String)) }
      attr_reader :chain

      sig { params(chain: String).void }
      attr_writer :chain

      sig { returns(T.nilable(String)) }
      attr_reader :data

      sig { params(data: String).void }
      attr_writer :data

      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

      sig { returns(T.nilable(String)) }
      attr_reader :gas

      sig { params(gas: String).void }
      attr_writer :gas

      sig { returns(T.nilable(String)) }
      attr_reader :gas_price

      sig { params(gas_price: String).void }
      attr_writer :gas_price

      sig { returns(T.nilable(String)) }
      attr_reader :to

      sig { params(to: String).void }
      attr_writer :to

      sig { returns(T.nilable(String)) }
      attr_reader :value

      sig { params(value: String).void }
      attr_writer :value

      # The parameters of the scanned transaction.
      sig do
        params(
          block_tag: String,
          calldata: Privy::TransactionScanningCalldata::OrHash,
          chain: String,
          data: String,
          from: String,
          gas: String,
          gas_price: String,
          to: String,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(
        block_tag: nil,
        # Decoded calldata from a scanned transaction.
        calldata: nil,
        chain: nil,
        data: nil,
        from: nil,
        gas: nil,
        gas_price: nil,
        to: nil,
        value: nil
      )
      end

      sig do
        override.returns(
          {
            block_tag: String,
            calldata: Privy::TransactionScanningCalldata,
            chain: String,
            data: String,
            from: String,
            gas: String,
            gas_price: String,
            to: String,
            value: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
