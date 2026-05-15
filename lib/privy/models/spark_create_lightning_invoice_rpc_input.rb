# frozen_string_literal: true

module Privy
  module Models
    class SparkCreateLightningInvoiceRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkCreateLightningInvoiceRpcInput::Method]
      required :method_, enum: -> { Privy::SparkCreateLightningInvoiceRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the Spark `createLightningInvoice` RPC.
      #
      #   @return [Privy::Models::SparkCreateLightningInvoiceRpcInputParams]
      required :params, -> { Privy::SparkCreateLightningInvoiceRpcInputParams }

      # @!attribute network
      #   The Spark network.
      #
      #   @return [Symbol, Privy::Models::SparkNetwork, nil]
      optional :network, enum: -> { Privy::SparkNetwork }

      # @!method initialize(method_:, params:, network: nil)
      #   Creates a Lightning invoice for the Spark wallet.
      #
      #   @param method_ [Symbol, Privy::Models::SparkCreateLightningInvoiceRpcInput::Method]
      #
      #   @param params [Privy::Models::SparkCreateLightningInvoiceRpcInputParams] Parameters for the Spark `createLightningInvoice` RPC.
      #
      #   @param network [Symbol, Privy::Models::SparkNetwork] The Spark network.

      # @see Privy::Models::SparkCreateLightningInvoiceRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        CREATE_LIGHTNING_INVOICE = :createLightningInvoice

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
