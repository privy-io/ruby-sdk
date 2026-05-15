# frozen_string_literal: true

module Privy
  module Models
    class TransferIntentRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute body
      #   Request body for initiating a sponsored token transfer from an embedded wallet.
      #
      #   @return [Privy::Models::TransferRequestBody]
      required :body, -> { Privy::TransferRequestBody }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::TransferIntentRequestDetails::Method]
      required :method_, enum: -> { Privy::TransferIntentRequestDetails::Method }, api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(body:, method_:, url:)
      #   Request details for a transfer intent.
      #
      #   @param body [Privy::Models::TransferRequestBody] Request body for initiating a sponsored token transfer from an embedded wallet.
      #
      #   @param method_ [Symbol, Privy::Models::TransferIntentRequestDetails::Method]
      #
      #   @param url [String]

      # @see Privy::Models::TransferIntentRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        POST = :POST

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
