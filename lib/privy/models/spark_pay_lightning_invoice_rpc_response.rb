# frozen_string_literal: true

module Privy
  module Models
    class SparkPayLightningInvoiceRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkPayLightningInvoiceRpcResponse::Method]
      required :method_, enum: -> { Privy::SparkPayLightningInvoiceRpcResponse::Method }, api_name: :method

      # @!attribute data
      #   A Spark transfer.
      #
      #   @return [Privy::Models::SparkTransfer, Privy::Models::SparkLightningSendRequest, nil]
      optional :data, union: -> { Privy::SparkPayLightningInvoiceRpcResponse::Data }

      # @!method initialize(method_:, data: nil)
      #   Response to the Spark `payLightningInvoice` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SparkPayLightningInvoiceRpcResponse::Method]
      #
      #   @param data [Privy::Models::SparkTransfer, Privy::Models::SparkLightningSendRequest] A Spark transfer.

      # @see Privy::Models::SparkPayLightningInvoiceRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        PAY_LIGHTNING_INVOICE = :payLightningInvoice

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # A Spark transfer.
      #
      # @see Privy::Models::SparkPayLightningInvoiceRpcResponse#data
      module Data
        extend Privy::Internal::Type::Union

        # A Spark transfer.
        variant -> { Privy::SparkTransfer }

        # A Spark Lightning send request.
        variant -> { Privy::SparkLightningSendRequest }

        # @!method self.variants
        #   @return [Array(Privy::Models::SparkTransfer, Privy::Models::SparkLightningSendRequest)]
      end
    end
  end
end
