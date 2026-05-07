# frozen_string_literal: true

module Privy
  module Models
    class SparkGetClaimStaticDepositQuoteRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkGetClaimStaticDepositQuoteRpcInput::Method]
      required :method_,
               enum: -> {
                 Privy::SparkGetClaimStaticDepositQuoteRpcInput::Method
               },
               api_name: :method

      # @!attribute params
      #   Parameters for the Spark `getClaimStaticDepositQuote` RPC.
      #
      #   @return [Privy::Models::SparkGetClaimStaticDepositQuoteRpcInputParams]
      required :params, -> { Privy::SparkGetClaimStaticDepositQuoteRpcInputParams }

      # @!attribute network
      #   The Spark network.
      #
      #   @return [Symbol, Privy::Models::SparkNetwork, nil]
      optional :network, enum: -> { Privy::SparkNetwork }

      # @!method initialize(method_:, params:, network: nil)
      #   Gets a quote for claiming a static deposit.
      #
      #   @param method_ [Symbol, Privy::Models::SparkGetClaimStaticDepositQuoteRpcInput::Method]
      #
      #   @param params [Privy::Models::SparkGetClaimStaticDepositQuoteRpcInputParams] Parameters for the Spark `getClaimStaticDepositQuote` RPC.
      #
      #   @param network [Symbol, Privy::Models::SparkNetwork] The Spark network.

      # @see Privy::Models::SparkGetClaimStaticDepositQuoteRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        GET_CLAIM_STATIC_DEPOSIT_QUOTE = :getClaimStaticDepositQuote

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
