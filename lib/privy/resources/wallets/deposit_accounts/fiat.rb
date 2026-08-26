# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      class DepositAccounts
        # Operations related to fiat onramping and offramping
        class Fiat
          # Creates a Bridge Virtual Account linked to a wallet. Fiat sent to the returned
          # deposit instructions will be converted to the specified crypto asset and
          # delivered to the wallet.
          #
          # @overload create(wallet_id, destination:, provider:, source:, environment: nil, request_options: {})
          #
          # @param wallet_id [String] The ID of the wallet.
          #
          # @param destination [Privy::Models::FiatDepositAccountDestination] The destination crypto asset and chain for a fiat deposit account.
          #
          # @param provider [Symbol, Privy::Models::CreateFiatDepositAccountRequestBody::Provider] Discriminator: the fiat deposit account is orchestrated via Bridge.
          #
          # @param source [Privy::Models::CreateFiatDepositAccountSource] The source fiat currency for a fiat deposit account.
          #
          # @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::FiatDepositAccountResponse]
          #
          # @see Privy::Models::Wallets::DepositAccounts::FiatCreateParams
          def create(wallet_id, params)
            parsed, options = Privy::Wallets::DepositAccounts::FiatCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["v1/wallets/%1$s/deposit_accounts/fiat", wallet_id],
              body: parsed,
              model: Privy::FiatDepositAccountResponse,
              options: options
            )
          end

          # Returns a list of fiat deposit accounts linked to a wallet.
          #
          # @overload list(wallet_id, provider:, environment: nil, request_options: {})
          #
          # @param wallet_id [String] The ID of the wallet.
          #
          # @param provider [Symbol, Privy::Models::OrchestrationProvider] Supported fiat orchestration providers.
          #
          # @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::ListFiatDepositAccountsResponse]
          #
          # @see Privy::Models::Wallets::DepositAccounts::FiatListParams
          def list(wallet_id, params)
            parsed, options = Privy::Wallets::DepositAccounts::FiatListParams.dump_request(params)
            query = Privy::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["v1/wallets/%1$s/deposit_accounts/fiat", wallet_id],
              query: query,
              model: Privy::ListFiatDepositAccountsResponse,
              options: options
            )
          end

          # Returns a single fiat deposit account linked to a wallet.
          #
          # @overload get(deposit_account_id, wallet_id:, request_options: {})
          #
          # @param deposit_account_id [String] The ID of the fiat deposit account.
          #
          # @param wallet_id [String] The ID of the wallet.
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::FiatDepositAccountResponse]
          #
          # @see Privy::Models::Wallets::DepositAccounts::FiatGetParams
          def get(deposit_account_id, params)
            parsed, options = Privy::Wallets::DepositAccounts::FiatGetParams.dump_request(params)
            wallet_id =
              parsed.delete(:wallet_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["v1/wallets/%1$s/deposit_accounts/fiat/%2$s", wallet_id, deposit_account_id],
              model: Privy::FiatDepositAccountResponse,
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
