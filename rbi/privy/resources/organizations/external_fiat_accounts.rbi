# typed: strong

module Privy
  module Resources
    class Organizations
      # Operations related to fiat onramping and offramping
      class ExternalFiatAccounts
        # Creates an external fiat account linked to an organization for use in offramp
        # transfers.
        sig do
          params(
            organization_id: String,
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
          ).returns(Privy::OrganizationExternalFiatAccountResponse)
        end
        def create(
          # The ID of the organization to create the external fiat account for.
          organization_id,
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

        # Returns a list of external fiat accounts linked to an organization.
        sig do
          params(
            organization_id: String,
            provider: Privy::OrchestrationProvider::OrSymbol,
            environment: Privy::Environment::OrSymbol,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::ListOrganizationExternalFiatAccountsResponse)
        end
        def list(
          # The ID of the organization to list external fiat accounts for.
          organization_id,
          # Supported fiat orchestration providers.
          provider:,
          # The Privy API environment.
          environment: nil,
          request_options: {}
        )
        end

        # Deletes an external fiat account linked to an organization.
        sig do
          params(
            account_id: String,
            organization_id: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::SuccessResponse)
        end
        def delete(
          # The ID of the external fiat account.
          account_id,
          # The ID of the organization.
          organization_id:,
          request_options: {}
        )
        end

        # Returns a single external fiat account linked to an organization.
        sig do
          params(
            account_id: String,
            organization_id: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::OrganizationExternalFiatAccountResponse)
        end
        def get(
          # The ID of the external fiat account.
          account_id,
          # The ID of the organization.
          organization_id:,
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
