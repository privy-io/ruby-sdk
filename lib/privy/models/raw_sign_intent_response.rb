# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#raw_sign
    class RawSignIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::RawSignIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::RawSignIntentResponse::IntentType }

      # @!attribute request_details
      #   The original raw sign request that would be sent to the wallet endpoint
      #
      #   @return [Privy::Models::RawSignIntentResponse::RequestDetails]
      required :request_details, -> { Privy::RawSignIntentResponse::RequestDetails }

      # @!attribute action_result
      #   Result of raw sign execution (only present if status is 'executed' or 'failed')
      #
      #   @return [Privy::Models::BaseActionResult, nil]
      optional :action_result, -> { Privy::BaseActionResult }

      # @!attribute current_resource_data
      #   A wallet managed by Privy's wallet infrastructure.
      #
      #   @return [Privy::Models::Wallet, nil]
      optional :current_resource_data, -> { Privy::Wallet }

      # @!method initialize(intent_type:, request_details:, action_result: nil, current_resource_data: nil)
      #   Response for a raw sign intent
      #
      #   @param intent_type [Symbol, Privy::Models::RawSignIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::RawSignIntentResponse::RequestDetails] The original raw sign request that would be sent to the wallet endpoint
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of raw sign execution (only present if status is 'executed' or 'failed')
      #
      #   @param current_resource_data [Privy::Models::Wallet] A wallet managed by Privy's wallet infrastructure.

      module IntentType
        extend Privy::Internal::Type::Enum

        RAW_SIGN = :RAW_SIGN

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class RequestDetails < Privy::Internal::Type::BaseModel
        # @!attribute body
        #   Provide either `hash` (to sign a pre-computed hash) OR `bytes`, `encoding`, and
        #   `hash_function` (to hash and then sign). These options are mutually exclusive.
        #
        #   @return [Privy::Models::RawSignInput]
        required :body, -> { Privy::RawSignInput }

        # @!attribute method_
        #
        #   @return [Symbol, Privy::Models::RawSignIntentResponse::RequestDetails::Method]
        required :method_,
                 enum: -> {
                   Privy::RawSignIntentResponse::RequestDetails::Method
                 },
                 api_name: :method

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!method initialize(body:, method_:, url:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::RawSignIntentResponse::RequestDetails} for more details.
        #
        #   The original raw sign request that would be sent to the wallet endpoint
        #
        #   @param body [Privy::Models::RawSignInput] Provide either `hash` (to sign a pre-computed hash) OR `bytes`, `encoding`, and
        #
        #   @param method_ [Symbol, Privy::Models::RawSignIntentResponse::RequestDetails::Method]
        #
        #   @param url [String]

        # @see Privy::Models::RawSignIntentResponse::RequestDetails#method_
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
