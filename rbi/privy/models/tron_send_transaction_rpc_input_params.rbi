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

      # Parameters for the Tron `tron_sendTransaction` RPC.
      sig do
        params(raw_data: Privy::TronRawDataForSend::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # Tron raw_data for tron_sendTransaction. Block reference fields are optional;
        # Privy fetches fresh values if omitted.
        raw_data:
      )
      end

      sig { override.returns({ raw_data: Privy::TronRawDataForSend }) }
      def to_hash
      end
    end
  end
end
