# frozen_string_literal: true

module Privy
  module Resources
    class Users
      # Operations related to fiat onramping and offramping
      class KYC
        # Returns KYC status for all providers the user has initiated KYC with.
        #
        # @overload list(user_id, request_options: {})
        #
        # @param user_id [String] The ID of the user.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::KYCStatusListResponse]
        #
        # @see Privy::Models::Users::KYCListParams
        def list(user_id, params = {})
          @client.request(
            method: :get,
            path: ["v1/users/%1$s/kyc", user_id],
            model: Privy::KYCStatusListResponse,
            options: params[:request_options]
          )
        end

        # Generates a hosted KYC link for the user and returns the current KYC status
        # snapshot.
        #
        # @overload initiate_links(user_id, provider:, client_agreement_id: nil, email: nil, endorsements: nil, environment: nil, redirect_uri: nil, request_options: {})
        #
        # @param user_id [String] The ID of the user.
        #
        # @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
        #
        # @param client_agreement_id [String] Client-side agreement ID for ToS acceptance.
        #
        # @param email [String] Email address for the KYC session.
        #
        # @param endorsements [Array<String>] Endorsements to request during KYC.
        #
        # @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
        #
        # @param redirect_uri [String] URI to redirect the user after completing KYC.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::KYCStatusResponse]
        #
        # @see Privy::Models::Users::KYCInitiateLinksParams
        def initiate_links(user_id, params)
          parsed, options = Privy::Users::KYCInitiateLinksParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/users/%1$s/kyc/links", user_id],
            body: parsed,
            model: Privy::KYCStatusResponse,
            options: options
          )
        end

        # Generates a Bridge terms-of-service acceptance link for the user.
        #
        # @overload initiate_tos(user_id, provider:, email: nil, environment: nil, request_options: {})
        #
        # @param user_id [String] The ID of the user.
        #
        # @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
        #
        # @param email [String] Email for the user. If not provided, falls back to the user's linked email.
        #
        # @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::KyxTosResponse]
        #
        # @see Privy::Models::Users::KYCInitiateTosParams
        def initiate_tos(user_id, params)
          parsed, options = Privy::Users::KYCInitiateTosParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/users/%1$s/kyc/tos", user_id],
            body: parsed,
            model: Privy::KyxTosResponse,
            options: options
          )
        end

        # Submits KYC verification data for the user. Safe to call more than once: the
        # first call creates the provider customer and later calls update it, so a partial
        # submission can be completed incrementally. The first submission must carry
        # enough to begin verification — name, date of birth, residential address and at
        # least one identifying document; later calls may send only the fields that
        # change.
        #
        # @overload submit(user_id, data:, provider:, client_agreement_id: nil, endorsements: nil, environment: nil, request_options: {})
        #
        # @param user_id [String] The ID of the user.
        #
        # @param data [Privy::Models::KYCSubmitData] KYC verification data for headless submission.
        #
        # @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
        #
        # @param client_agreement_id [String] Client-side agreement ID for ToS acceptance.
        #
        # @param endorsements [Array<String>] Endorsements to request during KYC.
        #
        # @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::KYCStatusResponse]
        #
        # @see Privy::Models::Users::KYCSubmitParams
        def submit(user_id, params)
          parsed, options = Privy::Users::KYCSubmitParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/users/%1$s/kyc/submit", user_id],
            body: parsed,
            model: Privy::KYCStatusResponse,
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
