# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Earn
        # Operations related to wallet actions
        class Tmmf
          # Returns a user's registration with each tMMF provider and a page of the wallets
          # registered for it, with each status read live from the provider.
          #
          # @overload get(user_id, provider: nil, wallet_id: nil, wallets_cursor: nil, wallets_limit: nil, request_options: {})
          #
          # @param user_id [String] ID of the Privy user.
          #
          # @param provider [Symbol, String, Privy::Models::Wallets::TmmfProvider] The fund provider.
          #
          # @param wallet_id [String] Only return the registration of this wallet.
          #
          # @param wallets_cursor [String] Cursor returned by the previous page.
          #
          # @param wallets_limit [Integer] Maximum number of wallet registrations to return.
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::Wallets::TmmfUserResponse]
          #
          # @see Privy::Models::Users::Earn::TmmfGetParams
          def get(user_id, params = {})
            parsed, options = Privy::Users::Earn::TmmfGetParams.dump_request(params)
            query = Privy::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["v1/users/%1$s/earn/tmmf", user_id],
              query: query,
              model: Privy::Wallets::TmmfUserResponse,
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
end
