# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      # Operations related to wallet actions
      class Actions
        # Some parameter documentations has been truncated, see
        # {Privy::Models::Wallets::ActionGetParams} for more details.
        #
        # Get the current status of a wallet action by its ID. Use `?include=steps` to
        # include step-level details.
        #
        # @overload get(action_id, wallet_id:, include: nil, privy_authorization_signature: nil, request_options: {})
        #
        # @param action_id [String] Path param: ID of the wallet action.
        #
        # @param wallet_id [String] Path param: ID of the wallet.
        #
        # @param include [Symbol, Privy::Models::Wallets::WalletActionInclude] Query param: Expandable relations to include on a wallet action response.
        #
        # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::Wallets::SwapActionResponse, Privy::Models::Wallets::TransferActionResponse, Privy::Models::Wallets::EarnDepositActionResponse, Privy::Models::Wallets::EarnWithdrawActionResponse, Privy::Models::Wallets::EarnIncentiveClaimActionResponse, Privy::Models::Wallets::EarnFeeCollectActionResponse]
        #
        # @see Privy::Models::Wallets::ActionGetParams
        def get(action_id, params)
          query_params = [:include]
          parsed, options = Privy::Wallets::ActionGetParams.dump_request(params)
          query = Privy::Internal::Util.encode_query_params(parsed.slice(*query_params))
          wallet_id =
            parsed.delete(:wallet_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/wallets/%1$s/actions/%2$s", wallet_id, action_id],
            query: query,
            headers: parsed.except(*query_params).transform_keys(
              privy_authorization_signature: "privy-authorization-signature"
            ),
            model: Privy::Wallets::WalletActionResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Privy::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
