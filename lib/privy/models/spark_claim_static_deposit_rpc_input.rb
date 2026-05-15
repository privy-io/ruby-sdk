# frozen_string_literal: true

module Privy
  module Models
    class SparkClaimStaticDepositRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkClaimStaticDepositRpcInput::Method]
      required :method_, enum: -> { Privy::SparkClaimStaticDepositRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the Spark `claimStaticDeposit` RPC.
      #
      #   @return [Privy::Models::SparkClaimStaticDepositRpcInputParams]
      required :params, -> { Privy::SparkClaimStaticDepositRpcInputParams }

      # @!attribute network
      #   The Spark network.
      #
      #   @return [Symbol, Privy::Models::SparkNetwork, nil]
      optional :network, enum: -> { Privy::SparkNetwork }

      # @!method initialize(method_:, params:, network: nil)
      #   Claims a static deposit into the Spark wallet.
      #
      #   @param method_ [Symbol, Privy::Models::SparkClaimStaticDepositRpcInput::Method]
      #
      #   @param params [Privy::Models::SparkClaimStaticDepositRpcInputParams] Parameters for the Spark `claimStaticDeposit` RPC.
      #
      #   @param network [Symbol, Privy::Models::SparkNetwork] The Spark network.

      # @see Privy::Models::SparkClaimStaticDepositRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        CLAIM_STATIC_DEPOSIT = :claimStaticDeposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
