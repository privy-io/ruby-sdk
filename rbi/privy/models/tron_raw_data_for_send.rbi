# typed: strong

module Privy
  module Models
    class TronRawDataForSend < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TronRawDataForSend, Privy::Internal::AnyHash)
        end

      sig do
        returns(
          T::Array[
            T.any(Privy::TronTransferContract, Privy::TronTriggerSmartContract)
          ]
        )
      end
      attr_accessor :contract

      sig { returns(T.nilable(String)) }
      attr_reader :data

      sig { params(data: String).void }
      attr_writer :data

      sig { returns(T.nilable(Integer)) }
      attr_reader :expiration

      sig { params(expiration: Integer).void }
      attr_writer :expiration

      sig { returns(T.nilable(Integer)) }
      attr_reader :fee_limit

      sig { params(fee_limit: Integer).void }
      attr_writer :fee_limit

      sig { returns(T.nilable(String)) }
      attr_reader :ref_block_bytes

      sig { params(ref_block_bytes: String).void }
      attr_writer :ref_block_bytes

      sig { returns(T.nilable(String)) }
      attr_reader :ref_block_hash

      sig { params(ref_block_hash: String).void }
      attr_writer :ref_block_hash

      sig { returns(T.nilable(Integer)) }
      attr_reader :timestamp

      sig { params(timestamp: Integer).void }
      attr_writer :timestamp

      # Tron raw_data for tron_sendTransaction. Block reference fields are optional;
      # Privy fetches fresh values if omitted.
      sig do
        params(
          contract:
            T::Array[
              T.any(
                Privy::TronTransferContract::OrHash,
                Privy::TronTriggerSmartContract::OrHash
              )
            ],
          data: String,
          expiration: Integer,
          fee_limit: Integer,
          ref_block_bytes: String,
          ref_block_hash: String,
          timestamp: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        contract:,
        data: nil,
        expiration: nil,
        fee_limit: nil,
        ref_block_bytes: nil,
        ref_block_hash: nil,
        timestamp: nil
      )
      end

      sig do
        override.returns(
          {
            contract:
              T::Array[
                T.any(
                  Privy::TronTransferContract,
                  Privy::TronTriggerSmartContract
                )
              ],
            data: String,
            expiration: Integer,
            fee_limit: Integer,
            ref_block_bytes: String,
            ref_block_hash: String,
            timestamp: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
