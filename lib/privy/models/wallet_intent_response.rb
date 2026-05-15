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
        #
        #   @return [Privy::Models::WalletIntentResponse::RequestDetails::Body]
        required :body, -> { Privy::WalletIntentResponse::RequestDetails::Body }

        # @!attribute method_
        #
        #   @return [Symbol, Privy::Models::WalletIntentResponse::RequestDetails::Method]
        required :method_, enum: -> { Privy::WalletIntentResponse::RequestDetails::Method }, api_name: :method

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!method initialize(body:, method_:, url:)
        #   The original wallet update request that would be sent to the wallet endpoint
        #
        #   @param body [Privy::Models::WalletIntentResponse::RequestDetails::Body]
        #   @param method_ [Symbol, Privy::Models::WalletIntentResponse::RequestDetails::Method]
        #   @param url [String]

        # @see Privy::Models::WalletIntentResponse::RequestDetails#body
        class Body < Privy::Internal::Type::BaseModel
          # @!attribute additional_signers
          #   Additional signers for the wallet.
          #
          #   @return [Array<Privy::Models::AdditionalSignerItemInput>, nil]
          optional :additional_signers, -> { Privy::Internal::Type::ArrayOf[Privy::AdditionalSignerItemInput] }

          # @!attribute authorization_key_ids
          #
          #   @return [Array<String>, nil]
          optional :authorization_key_ids, Privy::Internal::Type::ArrayOf[String]

          # @!attribute authorization_threshold
          #
          #   @return [Float, nil]
          optional :authorization_threshold, Float

          # @!attribute display_name
          #
          #   @return [String, nil]
          optional :display_name, String, nil?: true

          # @!attribute owner
          #   The owner of the resource, specified as a Privy user ID, a P-256 public key, or
          #   null to remove the current owner.
          #
          #   @return [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil]
          optional :owner, union: -> { Privy::OwnerInput }, nil?: true

          # @!attribute owner_id
          #   The key quorum ID to set as the owner of the resource. If you provide this, do
          #   not specify an owner.
          #
          #   @return [String, nil]
          optional :owner_id, String, nil?: true

          # @!attribute policy_ids
          #   An optional list of up to one policy ID to enforce on the wallet.
          #
          #   @return [Array<String>, nil]
          optional :policy_ids, Privy::Internal::Type::ArrayOf[String]

          # @!method initialize(additional_signers: nil, authorization_key_ids: nil, authorization_threshold: nil, display_name: nil, owner: nil, owner_id: nil, policy_ids: nil)
          #   Some parameter documentations has been truncated, see
          #   {Privy::Models::WalletIntentResponse::RequestDetails::Body} for more details.
          #
          #   @param additional_signers [Array<Privy::Models::AdditionalSignerItemInput>] Additional signers for the wallet.
          #
          #   @param authorization_key_ids [Array<String>]
          #
          #   @param authorization_threshold [Float]
          #
          #   @param display_name [String, nil]
          #
          #   @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] The owner of the resource, specified as a Privy user ID, a P-256 public key, or
          #
          #   @param owner_id [String, nil] The key quorum ID to set as the owner of the resource. If you provide this, do n
          #
          #   @param policy_ids [Array<String>] An optional list of up to one policy ID to enforce on the wallet.
        end

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
