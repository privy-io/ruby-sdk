# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#update_wallet
    class WalletIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::WalletIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::WalletIntentResponse::IntentType }

      # @!attribute request_details
      #   The original wallet update request that would be sent to the wallet endpoint
      #
      #   @return [Privy::Models::WalletIntentResponse::RequestDetails]
      required :request_details, -> { Privy::WalletIntentResponse::RequestDetails }

      # @!attribute action_result
      #   Result of wallet update execution (only present if status is 'executed' or
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
      #   {Privy::Models::WalletIntentResponse} for more details.
      #
      #   Response for a wallet intent
      #
      #   @param intent_type [Symbol, Privy::Models::WalletIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::WalletIntentResponse::RequestDetails] The original wallet update request that would be sent to the wallet endpoint
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of wallet update execution (only present if status is 'executed' or 'fail
      #
      #   @param current_resource_data [Privy::Models::Wallet] A wallet managed by Privy's wallet infrastructure.

      module IntentType
        extend Privy::Internal::Type::Enum

        WALLET = :WALLET

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class RequestDetails < Privy::Internal::Type::BaseModel
        # @!attribute body
        #   Request body for updating a wallet. `owner` and `owner_id` are mutually
        #   exclusive.
        #
        #   @return [Privy::Models::WalletUpdateRequestBody]
        required :body, -> { Privy::WalletUpdateRequestBody }

        # @!attribute method_
        #
        #   @return [Symbol, Privy::Models::WalletIntentResponse::RequestDetails::Method]
        required :method_, enum: -> { Privy::WalletIntentResponse::RequestDetails::Method }, api_name: :method

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!method initialize(body:, method_:, url:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::WalletIntentResponse::RequestDetails} for more details.
        #
        #   The original wallet update request that would be sent to the wallet endpoint
        #
        #   @param body [Privy::Models::WalletUpdateRequestBody] Request body for updating a wallet. `owner` and `owner_id` are mutually exclusiv
        #
        #   @param method_ [Symbol, Privy::Models::WalletIntentResponse::RequestDetails::Method]
        #
        #   @param url [String]

        # @see Privy::Models::WalletIntentResponse::RequestDetails#method_
        module Method
          extend Privy::Internal::Type::Enum

          PATCH = :PATCH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
