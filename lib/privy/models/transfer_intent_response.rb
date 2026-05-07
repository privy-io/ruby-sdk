# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#transfer
    class TransferIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::TransferIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::TransferIntentResponse::IntentType }

      # @!attribute request_details
      #   The original transfer request that would be sent to the wallet transfer endpoint
      #
      #   @return [Privy::Models::TransferIntentResponse::RequestDetails]
      required :request_details, -> { Privy::TransferIntentResponse::RequestDetails }

      # @!attribute action_result
      #   Result of transfer execution (only present if intent status is 'executed' or
      #   'failed')
      #
      #   @return [Privy::Models::BaseActionResult, nil]
      optional :action_result, -> { Privy::BaseActionResult }

      # @!attribute current_resource_data
      #   A wallet managed by Privy's wallet infrastructure.
      #
      #   @return [Privy::Models::Wallet, nil]
      optional :current_resource_data, -> { Privy::Wallet }

      # @!method initialize(intent_type:, request_details:, action_result: nil, current_resource_data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TransferIntentResponse} for more details.
      #
      #   Response for a transfer intent
      #
      #   @param intent_type [Symbol, Privy::Models::TransferIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::TransferIntentResponse::RequestDetails] The original transfer request that would be sent to the wallet transfer endpoint
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of transfer execution (only present if intent status is 'executed' or 'fa
      #
      #   @param current_resource_data [Privy::Models::Wallet] A wallet managed by Privy's wallet infrastructure.

      module IntentType
        extend Privy::Internal::Type::Enum

        TRANSFER = :TRANSFER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class RequestDetails < Privy::Internal::Type::BaseModel
        # @!attribute body
        #   Request body for initiating a sponsored token transfer from an embedded wallet.
        #
        #   @return [Privy::Models::TransferRequestBody]
        required :body, -> { Privy::TransferRequestBody }

        # @!attribute method_
        #
        #   @return [Symbol, Privy::Models::TransferIntentResponse::RequestDetails::Method]
        required :method_,
                 enum: -> {
                   Privy::TransferIntentResponse::RequestDetails::Method
                 },
                 api_name: :method

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!method initialize(body:, method_:, url:)
        #   The original transfer request that would be sent to the wallet transfer endpoint
        #
        #   @param body [Privy::Models::TransferRequestBody] Request body for initiating a sponsored token transfer from an embedded wallet.
        #
        #   @param method_ [Symbol, Privy::Models::TransferIntentResponse::RequestDetails::Method]
        #
        #   @param url [String]

        # @see Privy::Models::TransferIntentResponse::RequestDetails#method_
        module Method
          extend Privy::Internal::Type::Enum

          POST = :POST

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
