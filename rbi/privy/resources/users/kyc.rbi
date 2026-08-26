# typed: strong

module Privy
  module Resources
    class Users
      # Operations related to fiat onramping and offramping
      class KYC
        # Returns KYC status for all providers the user has initiated KYC with.
        sig do
          params(
            user_id: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::KYCStatusListResponse)
        end
        def list(
          # The ID of the user.
          user_id,
          request_options: {}
        )
        end

        # Generates a hosted KYC link for the user and returns the current KYC status
        # snapshot.
        sig do
          params(
            user_id: String,
            provider: Privy::KyxProvider::OrSymbol,
            client_agreement_id: String,
            email: String,
            endorsements: T::Array[String],
            environment: Privy::KyxEnvironment::OrSymbol,
            redirect_uri: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::KYCStatusResponse)
        end
        def initiate_links(
          # The ID of the user.
          user_id,
          # KYC/KYB provider identifier.
          provider:,
          # Client-side agreement ID for ToS acceptance.
          client_agreement_id: nil,
          # Email address for the KYC session.
          email: nil,
          # Endorsements to request during KYC.
          endorsements: nil,
          # Provider environment (production or sandbox).
          environment: nil,
          # URI to redirect the user after completing KYC.
          redirect_uri: nil,
          request_options: {}
        )
        end

        # Generates a Bridge terms-of-service acceptance link for the user.
        sig do
          params(
            user_id: String,
            provider: Privy::KyxProvider::OrSymbol,
            email: String,
            environment: Privy::KyxEnvironment::OrSymbol,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::KyxTosResponse)
        end
        def initiate_tos(
          # The ID of the user.
          user_id,
          # KYC/KYB provider identifier.
          provider:,
          # Email for the user. If not provided, falls back to the user's linked email.
          email: nil,
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
