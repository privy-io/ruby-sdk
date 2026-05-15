# frozen_string_literal: true

module Privy
  module Models
    class SparkCreateLightningInvoiceRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkCreateLightningInvoiceRpcResponse::Method]
      required :method_, enum: -> { Privy::SparkCreateLightningInvoiceRpcResponse::Method }, api_name: :method

      # @!attribute data
      #   A Spark Lightning receive request.
      #
      #   @return [Privy::Models::SparkLightningReceiveRequest, nil]
      optional :data, -> { Privy::SparkLightningReceiveRequest }

      # @!method initialize(method_:, data: nil)
      #   Response to the Spark `createLightningInvoice` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SparkCreateLightningInvoiceRpcResponse::Method]
      #
      #   @param data [Privy::Models::SparkLightningReceiveRequest] A Spark Lightning receive request.

      # @see Privy::Models::SparkCreateLightningInvoiceRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        CREATE_LIGHTNING_INVOICE = :createLightningInvoice

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
