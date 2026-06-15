# frozen_string_literal: true

module Privy
  module Models
    class TronSendTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute raw_data
      #   Tron raw_data for tron_sendTransaction. Block reference fields are optional;
      #   Privy fetches fresh values if omitted.
      #
      #   @return [Privy::Models::TronRawDataForSend]
      required :raw_data, -> { Privy::TronRawDataForSend }

      # @!method initialize(raw_data:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TronSendTransactionRpcInputParams} for more details.
      #
      #   Parameters for the Tron `tron_sendTransaction` RPC.
      #
      #   @param raw_data [Privy::Models::TronRawDataForSend] Tron raw_data for tron_sendTransaction. Block reference fields are optional; Pri
    end
  end
end
