# frozen_string_literal: true

module Privy
  module Resources
    class Users
      # Operations related to fiat onramping and offramping
      class ExternalFiatAccounts
        # Creates an external fiat account linked to a user for use in offramp transfers.
        #
        # @overload create(user_id, account:, account_owner_name:, currency:, provider:, address: nil, bank_name: nil, environment: nil, request_options: {})
        #
        # @param user_id [String] The DID of the user to create the external fiat account for.
        #
        # @param account [Privy::Models::ExternalFiatAccountUsData, Privy::Models::ExternalFiatAccountGBData, Privy::Models::ExternalFiatAccountPixData, Privy::Models::ExternalFiatAccountIbanData, Privy::Models::ExternalFiatAccountSwiftData] Bank account details. The `type` field discriminates which shape applies.
        #
        # @param account_owner_name [String]
        #
        # @param currency [String]
        #
        # @param provider [Symbol, Privy::Models::CreateExternalFiatAccountRequestBody::Provider] Discriminator: the external fiat account is orchestrated via Bridge.
        #
        # @param address [Privy::Models::ExternalFiatAccountAddress] Physical address associated with an external fiat account.
        #
        # @param bank_name [String]
        #
        # @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::ExternalFiatAccountResponse]
        #
        # @see Privy::Models::Users::ExternalFiatAccountCreateParams
        def create(user_id, params)
          parsed, options = Privy::Users::ExternalFiatAccountCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/users/%1$s/external_fiat_accounts", user_id],
            body: parsed,
            model: Privy::ExternalFiatAccountResponse,
            options: options
          )
        end

        # Returns a list of external fiat accounts linked to a user.
        #
        # @overload list(user_id, provider:, environment: nil, request_options: {})
        #
        # @param user_id [String] The DID of the user to list external fiat accounts for.
        #
        # @param provider [Symbol, Privy::Models::OrchestrationProvider] Supported fiat orchestration providers.
        #
        # @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::ListExternalFiatAccountsResponse]
        #
        # @see Privy::Models::Users::ExternalFiatAccountListParams
        def list(user_id, params)
          parsed, options = Privy::Users::ExternalFiatAccountListParams.dump_request(params)
          query = Privy::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v1/users/%1$s/external_fiat_accounts", user_id],
            query: query,
            model: Privy::ListExternalFiatAccountsResponse,
            options: options
          )
        end

        # Deletes an external fiat account linked to a user.
        #
        # @overload delete(account_id, user_id:, request_options: {})
        #
        # @param account_id [String] The ID of the external fiat account.
        #
        # @param user_id [String] The DID of the user.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::SuccessResponse]
        #
        # @see Privy::Models::Users::ExternalFiatAccountDeleteParams
        def delete(account_id, params)
          parsed, options = Privy::Users::ExternalFiatAccountDeleteParams.dump_request(params)
          user_id =
            parsed.delete(:user_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["v1/users/%1$s/external_fiat_accounts/%2$s", user_id, account_id],
            model: Privy::SuccessResponse,
            options: options
          )
        end

        # Returns a single external fiat account linked to a user.
        #
        # @overload get(account_id, user_id:, request_options: {})
        #
        # @param account_id [String] The ID of the external fiat account.
        #
        # @param user_id [String] The DID of the user.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::ExternalFiatAccountResponse]
        #
        # @see Privy::Models::Users::ExternalFiatAccountGetParams
        def get(account_id, params)
          parsed, options = Privy::Users::ExternalFiatAccountGetParams.dump_request(params)
          user_id =
            parsed.delete(:user_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/users/%1$s/external_fiat_accounts/%2$s", user_id, account_id],
            model: Privy::ExternalFiatAccountResponse,
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
