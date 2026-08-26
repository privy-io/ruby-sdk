# typed: strong

module Privy
  module Resources
    class Users
      # Operations related to fiat onramping and offramping
      class ExternalFiatAccounts
        # Creates an external fiat account linked to a user for use in offramp transfers.
        sig do
          params(
            user_id: String,
            account:
              T.any(
                Privy::ExternalFiatAccountUsData::OrHash,
                Privy::ExternalFiatAccountGBData::OrHash,
                Privy::ExternalFiatAccountPixData::OrHash,
                Privy::ExternalFiatAccountIbanData::OrHash,
                Privy::ExternalFiatAccountSwiftData::OrHash
              ),
            account_owner_name: String,
            currency: String,
            provider:
              Privy::CreateExternalFiatAccountRequestBody::Provider::OrSymbol,
            address: Privy::ExternalFiatAccountAddress::OrHash,
            bank_name: String,
            environment: Privy::Environment::OrSymbol,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::ExternalFiatAccountResponse)
        end
        def create(
          # The DID of the user to create the external fiat account for.
          user_id,
          # Bank account details. The `type` field discriminates which shape applies.
          account:,
          account_owner_name:,
          currency:,
          # Discriminator: the external fiat account is orchestrated via Bridge.
          provider:,
          # Physical address associated with an external fiat account.
          address: nil,
          bank_name: nil,
          # The Privy API environment.
          environment: nil,
          request_options: {}
        )
        end

        # Returns a list of external fiat accounts linked to a user.
        sig do
          params(
            user_id: String,
            provider: Privy::OrchestrationProvider::OrSymbol,
            environment: Privy::Environment::OrSymbol,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::ListExternalFiatAccountsResponse)
        end
        def list(
          # The DID of the user to list external fiat accounts for.
          user_id,
          # Supported fiat orchestration providers.
          provider:,
          # The Privy API environment.
          environment: nil,
          request_options: {}
        )
        end

        # Deletes an external fiat account linked to a user.
        sig do
          params(
            account_id: String,
            user_id: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::SuccessResponse)
        end
        def delete(
          # The ID of the external fiat account.
          account_id,
          # The DID of the user.
          user_id:,
          request_options: {}
        )
        end

        # Returns a single external fiat account linked to a user.
        sig do
          params(
            account_id: String,
            user_id: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::ExternalFiatAccountResponse)
        end
        def get(
          # The ID of the external fiat account.
          account_id,
          # The DID of the user.
          user_id:,
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
