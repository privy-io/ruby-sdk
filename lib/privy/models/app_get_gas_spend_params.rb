# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Apps#get_gas_spend
    class AppGetGasSpendParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute end_timestamp
      #
      #   @return [Float]
      required :end_timestamp, Float

      # @!attribute start_timestamp
      #
      #   @return [Float]
      required :start_timestamp, Float

      # @!attribute wallet_ids
      #
      #   @return [Array<String>]
      required :wallet_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(end_timestamp:, start_timestamp:, wallet_ids:, request_options: {})
      #   @param end_timestamp [Float]
      #   @param start_timestamp [Float]
      #   @param wallet_ids [Array<String>]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
