# typed: strong

module Privy
  module Resources
    class Organizations
      # Operations related to fiat onramping and offramping
      class KYB
        # Returns KYB status for all providers the organization has initiated KYB with.
        sig do
          params(
            organization_id: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::KYBStatusListResponse)
        end
        def list(
          # The ID of the organization.
          organization_id,
          request_options: {}
        )
        end

        # Generates a hosted KYB link for the organization and returns the current KYB
        # status snapshot.
        sig do
          params(
            organization_id: String,
            email: String,
            provider: Privy::KyxProvider::OrSymbol,
            business_name: String,
            client_agreement_id: String,
            endorsements: T::Array[String],
            environment: Privy::KyxEnvironment::OrSymbol,
            redirect_uri: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::KYBStatusResponse)
        end
        def initiate_links(
          # The ID of the organization.
          organization_id,
          # Email address for the organization.
          email:,
          # KYC/KYB provider identifier.
          provider:,
          # Legal name of the business.
          business_name: nil,
          # Client-side agreement ID for ToS acceptance.
          client_agreement_id: nil,
          # Endorsements to request during KYB.
          endorsements: nil,
          # Provider environment (production or sandbox).
          environment: nil,
          # URI to redirect after completing KYB.
          redirect_uri: nil,
          request_options: {}
        )
        end

        # Generates a Bridge terms-of-service acceptance link for the organization.
        sig do
          params(
            organization_id: String,
            email: String,
            provider: Privy::KyxProvider::OrSymbol,
            business_name: String,
            environment: Privy::KyxEnvironment::OrSymbol,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::KyxTosResponse)
        end
        def initiate_tos(
          # The ID of the organization.
          organization_id,
          # Email address for the organization.
          email:,
          # KYC/KYB provider identifier.
          provider:,
          # Legal name of the business.
          business_name: nil,
          # Provider environment (production or sandbox).
          environment: nil,
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
