# frozen_string_literal: true

module Privy
  module Models
    class TronSignTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute raw_data
      #   Tron raw_data for tron_signTransaction. Block reference fields are required;
      #   caller is responsible for fetching them.
      #
      #   @return [Privy::Models::TronRawDataForSign]
      required :raw_data, -> { Privy::TronRawDataForSign }

      # @!method initialize(raw_data:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TronSignTransactionRpcInputParams} for more details.
      #
      #   Parameters for the Tron `tron_signTransaction` RPC.
      #
      #   @param raw_data [Privy::Models::TronRawDataForSign] Tron raw_data for tron_signTransaction. Block reference fields are required; cal
    end
  end
end
