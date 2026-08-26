# typed: strong

module Privy
  module Models
    class OrganizationExternalFiatAccountResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OrganizationExternalFiatAccountResponse,
            Privy::Internal::AnyHash
          )
        end

      # A Bridge external fiat account linked to an organization.
      sig { returns(Privy::OrganizationExternalFiatAccount) }
      attr_reader :external_fiat_account

      sig do
        params(
          external_fiat_account: Privy::OrganizationExternalFiatAccount::OrHash
        ).void
      end
      attr_writer :external_fiat_account

      # Response containing a single organization external fiat account.
      sig do
        params(
          external_fiat_account: Privy::OrganizationExternalFiatAccount::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A Bridge external fiat account linked to an organization.
        external_fiat_account:
      )
      end

      sig do
        override.returns(
          { external_fiat_account: Privy::OrganizationExternalFiatAccount }
        )
      end
      def to_hash
      end
    end
  end
end
