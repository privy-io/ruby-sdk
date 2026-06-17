# typed: strong

module Privy
  module Models
    class TronRawDataForSign < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TronRawDataForSign, Privy::Internal::AnyHash)
        end

      sig do
        returns(
          T::Array[
            T.any(Privy::TronTransferContract, Privy::TronTriggerSmartContract)
          ]
        )
      end
      attr_accessor :contract

      sig { returns(Integer) }
      attr_accessor :expiration

      sig { returns(String) }
      attr_accessor :ref_block_bytes

      sig { returns(String) }
      attr_accessor :ref_block_hash

      sig { returns(T.nilable(String)) }
      attr_reader :data

      sig { params(data: String).void }
      attr_writer :data

      sig { returns(T.nilable(Integer)) }
      attr_reader :fee_limit

      sig { params(fee_limit: Integer).void }
      attr_writer :fee_limit

      sig { returns(T.nilable(Integer)) }
      attr_reader :timestamp

      sig { params(timestamp: Integer).void }
      attr_writer :timestamp

      # Tron raw_data for tron_signTransaction. Block reference fields are required;
      # caller is responsible for fetching them.
      sig do
        params(
          contract:
            T::Array[
              T.any(
                Privy::TronTransferContract::OrHash,
                Privy::TronTriggerSmartContract::OrHash
              )
            ],
          expiration: Integer,
          ref_block_bytes: String,
          ref_block_hash: String,
          data: String,
          fee_limit: Integer,
          timestamp: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        contract:,
        expiration:,
        ref_block_bytes:,
        ref_block_hash:,
        data: nil,
        fee_limit: nil,
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
            expiration: Integer,
            ref_block_bytes: String,
            ref_block_hash: String,
            data: String,
            fee_limit: Integer,
            timestamp: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
