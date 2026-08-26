# frozen_string_literal: true

module Privy
  module Resources
    class Organizations
      # Operations related to fiat onramping and offramping
      class ExternalFiatAccounts
        # Creates an external fiat account linked to an organization for use in offramp
        # transfers.
        #
        # @overload create(organization_id, account:, account_owner_name:, currency:, provider:, address: nil, bank_name: nil, environment: nil, request_options: {})
        #
        # @param organization_id [String] The ID of the organization to create the external fiat account for.
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
        # @return [Privy::Models::OrganizationExternalFiatAccountResponse]
        #
        # @see Privy::Models::Organizations::ExternalFiatAccountCreateParams
        def create(organization_id, params)
          parsed, options = Privy::Organizations::ExternalFiatAccountCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/organizations/%1$s/external_fiat_accounts", organization_id],
            body: parsed,
            model: Privy::OrganizationExternalFiatAccountResponse,
            options: options
          )
        end

        # Returns a list of external fiat accounts linked to an organization.
        #
        # @overload list(organization_id, provider:, environment: nil, request_options: {})
        #
        # @param organization_id [String] The ID of the organization to list external fiat accounts for.
        #
        # @param provider [Symbol, Privy::Models::OrchestrationProvider] Supported fiat orchestration providers.
        #
        # @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::ListOrganizationExternalFiatAccountsResponse]
        #
        # @see Privy::Models::Organizations::ExternalFiatAccountListParams
        def list(organization_id, params)
          parsed, options = Privy::Organizations::ExternalFiatAccountListParams.dump_request(params)
          query = Privy::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v1/organizations/%1$s/external_fiat_accounts", organization_id],
            query: query,
            model: Privy::ListOrganizationExternalFiatAccountsResponse,
            options: options
          )
        end

        # Deletes an external fiat account linked to an organization.
        #
        # @overload delete(account_id, organization_id:, request_options: {})
        #
        # @param account_id [String] The ID of the external fiat account.
        #
        # @param organization_id [String] The ID of the organization.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::SuccessResponse]
        #
        # @see Privy::Models::Organizations::ExternalFiatAccountDeleteParams
        def delete(account_id, params)
          parsed, options = Privy::Organizations::ExternalFiatAccountDeleteParams.dump_request(params)
          organization_id =
            parsed.delete(:organization_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["v1/organizations/%1$s/external_fiat_accounts/%2$s", organization_id, account_id],
            model: Privy::SuccessResponse,
            options: options
          )
        end

        # Returns a single external fiat account linked to an organization.
        #
        # @overload get(account_id, organization_id:, request_options: {})
        #
        # @param account_id [String] The ID of the external fiat account.
        #
        # @param organization_id [String] The ID of the organization.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::OrganizationExternalFiatAccountResponse]
        #
        # @see Privy::Models::Organizations::ExternalFiatAccountGetParams
        def get(account_id, params)
          parsed, options = Privy::Organizations::ExternalFiatAccountGetParams.dump_request(params)
          organization_id =
            parsed.delete(:organization_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/organizations/%1$s/external_fiat_accounts/%2$s", organization_id, account_id],
            model: Privy::OrganizationExternalFiatAccountResponse,
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
