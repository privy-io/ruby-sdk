# frozen_string_literal: true

module Privy
  module Resources
    class Organizations
      # Operations related to fiat onramping and offramping
      class KYB
        # Returns KYB status for all providers the organization has initiated KYB with.
        #
        # @overload list(organization_id, request_options: {})
        #
        # @param organization_id [String] The ID of the organization.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::KYBStatusListResponse]
        #
        # @see Privy::Models::Organizations::KYBListParams
        def list(organization_id, params = {})
          @client.request(
            method: :get,
            path: ["v1/organizations/%1$s/kyb", organization_id],
            model: Privy::KYBStatusListResponse,
            options: params[:request_options]
          )
        end

        # Generates a hosted KYB link for the organization and returns the current KYB
        # status snapshot.
        #
        # @overload initiate_links(organization_id, email:, provider:, business_name: nil, client_agreement_id: nil, endorsements: nil, environment: nil, redirect_uri: nil, request_options: {})
        #
        # @param organization_id [String] The ID of the organization.
        #
        # @param email [String] Email address for the organization.
        #
        # @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
        #
        # @param business_name [String] Legal name of the business.
        #
        # @param client_agreement_id [String] Client-side agreement ID for ToS acceptance.
        #
        # @param endorsements [Array<String>] Endorsements to request during KYB.
        #
        # @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
        #
        # @param redirect_uri [String] URI to redirect after completing KYB.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::KYBStatusResponse]
        #
        # @see Privy::Models::Organizations::KYBInitiateLinksParams
        def initiate_links(organization_id, params)
          parsed, options = Privy::Organizations::KYBInitiateLinksParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/organizations/%1$s/kyb/links", organization_id],
            body: parsed,
            model: Privy::KYBStatusResponse,
            options: options
          )
        end

        # Generates a Bridge terms-of-service acceptance link for the organization.
        #
        # @overload initiate_tos(organization_id, email:, provider:, business_name: nil, environment: nil, request_options: {})
        #
        # @param organization_id [String] The ID of the organization.
        #
        # @param email [String] Email address for the organization.
        #
        # @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
        #
        # @param business_name [String] Legal name of the business.
        #
        # @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::KyxTosResponse]
        #
        # @see Privy::Models::Organizations::KYBInitiateTosParams
        def initiate_tos(organization_id, params)
          parsed, options = Privy::Organizations::KYBInitiateTosParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/organizations/%1$s/kyb/tos", organization_id],
            body: parsed,
            model: Privy::KyxTosResponse,
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
