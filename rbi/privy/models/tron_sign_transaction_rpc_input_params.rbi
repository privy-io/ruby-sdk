# typed: strong

module Privy
  module Models
    class TronSignTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TronSignTransactionRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      # Tron raw_data for tron_signTransaction. Block reference fields are required;
      # caller is responsible for fetching them.
      sig { returns(Privy::TronRawDataForSign) }
      attr_reader :raw_data

      sig { params(raw_data: Privy::TronRawDataForSign::OrHash).void }
      attr_writer :raw_data

      # Parameters for the Tron `tron_signTransaction` RPC.
      sig do
        params(raw_data: Privy::TronRawDataForSign::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # Tron raw_data for tron_signTransaction. Block reference fields are required;
        # caller is responsible for fetching them.
        raw_data:
      )
      end

      sig { override.returns({ raw_data: Privy::TronRawDataForSign }) }
      def to_hash
      end
    end
  end
end
