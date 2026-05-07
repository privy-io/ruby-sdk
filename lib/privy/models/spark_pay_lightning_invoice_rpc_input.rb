# frozen_string_literal: true

module Privy
  module Models
    class SparkPayLightningInvoiceRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkPayLightningInvoiceRpcInput::Method]
      required :method_, enum: -> { Privy::SparkPayLightningInvoiceRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the Spark `payLightningInvoice` RPC.
      #
      #   @return [Privy::Models::SparkPayLightningInvoiceRpcInputParams]
      required :params, -> { Privy::SparkPayLightningInvoiceRpcInputParams }

      # @!attribute network
      #   The Spark network.
      #
      #   @return [Symbol, Privy::Models::SparkNetwork, nil]
      optional :network, enum: -> { Privy::SparkNetwork }

      # @!method initialize(method_:, params:, network: nil)
      #   Pays a Lightning invoice from the Spark wallet.
      #
      #   @param method_ [Symbol, Privy::Models::SparkPayLightningInvoiceRpcInput::Method]
      #
      #   @param params [Privy::Models::SparkPayLightningInvoiceRpcInputParams] Parameters for the Spark `payLightningInvoice` RPC.
      #
      #   @param network [Symbol, Privy::Models::SparkNetwork] The Spark network.

      # @see Privy::Models::SparkPayLightningInvoiceRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        PAY_LIGHTNING_INVOICE = :payLightningInvoice

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
