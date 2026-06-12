# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # @see Privy::Resources::Wallets::Actions#get
      class ActionGetParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        # @!attribute wallet_id
        #   ID of the wallet.
        #
        #   @return [String]
        required :wallet_id, String

        # @!attribute action_id
        #   ID of the wallet action.
        #
        #   @return [String]
        required :action_id, String

        # @!attribute include
        #   Expandable relations to include on a wallet action response.
        #
        #   @return [Symbol, Privy::Models::WalletActionInclude, nil]
        optional :include, enum: -> { Privy::WalletActionInclude }

        # @!attribute privy_authorization_signature
        #   Request authorization signature. If multiple signatures are required, they
        #   should be comma separated.
        #
        #   @return [String, nil]
        optional :privy_authorization_signature, String

        # @!method initialize(wallet_id:, action_id:, include: nil, privy_authorization_signature: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::ActionGetParams} for more details.
        #
        #   @param wallet_id [String] ID of the wallet.
        #
        #   @param action_id [String] ID of the wallet action.
        #
        #   @param include [Symbol, Privy::Models::WalletActionInclude] Expandable relations to include on a wallet action response.
        #
        #   @param privy_authorization_signature [String] Request authorization signature. If multiple signatures are required, they shoul
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
