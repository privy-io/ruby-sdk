# typed: strong

module Privy
  module Models
    class TronSendTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TronSendTransactionRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      # Tron raw_data for tron_sendTransaction. Block reference fields are optional;
      # Privy fetches fresh values if omitted.
      sig { returns(Privy::TronRawDataForSend) }
      attr_reader :raw_data

      sig { params(raw_data: Privy::TronRawDataForSend::OrHash).void }
      attr_writer :raw_data

      sig { returns(T.nilable(String)) }
      attr_reader :reference_id

      sig { params(reference_id: String).void }
      attr_writer :reference_id

      # Parameters for the Tron `tron_sendTransaction` RPC.
      sig do
        params(
          raw_data: Privy::TronRawDataForSend::OrHash,
          reference_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Tron raw_data for tron_sendTransaction. Block reference fields are optional;
        # Privy fetches fresh values if omitted.
        raw_data:,
        reference_id: nil
      )
      end

      sig do
        override.returns(
          { raw_data: Privy::TronRawDataForSend, reference_id: String }
        )
      end
      def to_hash
      end
    end
  end
end
