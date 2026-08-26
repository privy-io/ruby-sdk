# typed: strong

module Privy
  module Resources
    class Wallets
      class DepositAccounts
        # Operations related to fiat onramping and offramping
        class Fiat
          # Creates a Bridge Virtual Account linked to a wallet. Fiat sent to the returned
          # deposit instructions will be converted to the specified crypto asset and
          # delivered to the wallet.
          sig do
            params(
              wallet_id: String,
              destination: Privy::FiatDepositAccountDestination::OrHash,
              provider:
                Privy::CreateFiatDepositAccountRequestBody::Provider::OrSymbol,
              source: Privy::CreateFiatDepositAccountSource::OrHash,
              environment: Privy::Environment::OrSymbol,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::FiatDepositAccountResponse)
          end
          def create(
            # The ID of the wallet.
            wallet_id,
            # The destination crypto asset and chain for a fiat deposit account.
            destination:,
            # Discriminator: the fiat deposit account is orchestrated via Bridge.
            provider:,
            # The source fiat currency for a fiat deposit account.
            source:,
            # The Privy API environment.
            environment: nil,
            request_options: {}
          )
          end

          # Returns a list of fiat deposit accounts linked to a wallet.
          sig do
            params(
              wallet_id: String,
              provider: Privy::OrchestrationProvider::OrSymbol,
              environment: Privy::Environment::OrSymbol,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::ListFiatDepositAccountsResponse)
          end
          def list(
            # The ID of the wallet.
            wallet_id,
            # Supported fiat orchestration providers.
            provider:,
            # The Privy API environment.
            environment: nil,
            request_options: {}
          )
          end

          # Returns a single fiat deposit account linked to a wallet.
          sig do
            params(
              deposit_account_id: String,
              wallet_id: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::FiatDepositAccountResponse)
          end
          def get(
            # The ID of the fiat deposit account.
            deposit_account_id,
            # The ID of the wallet.
            wallet_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Privy::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
