# frozen_string_literal: true

module Privy
  module Models
    class SparkGetStaticDepositAddressRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkGetStaticDepositAddressRpcInput::Method]
      required :method_, enum: -> { Privy::SparkGetStaticDepositAddressRpcInput::Method }, api_name: :method

      # @!attribute network
      #   The Spark network.
      #
      #   @return [Symbol, Privy::Models::SparkNetwork, nil]
      optional :network, enum: -> { Privy::SparkNetwork }

      # @!method initialize(method_:, network: nil)
      #   Gets a static deposit address for the Spark wallet.
      #
      #   @param method_ [Symbol, Privy::Models::SparkGetStaticDepositAddressRpcInput::Method]
      #
      #   @param network [Symbol, Privy::Models::SparkNetwork] The Spark network.

      # @see Privy::Models::SparkGetStaticDepositAddressRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        GET_STATIC_DEPOSIT_ADDRESS = :getStaticDepositAddress

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
