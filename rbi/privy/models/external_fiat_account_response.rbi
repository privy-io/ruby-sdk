# typed: strong

module Privy
  module Models
    class ExternalFiatAccountResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExternalFiatAccountResponse, Privy::Internal::AnyHash)
        end

      # A Bridge external fiat account linked to a user.
      sig { returns(Privy::ExternalFiatAccount) }
      attr_reader :external_fiat_account

      sig do
        params(external_fiat_account: Privy::ExternalFiatAccount::OrHash).void
      end
      attr_writer :external_fiat_account

      # Response containing a single external fiat account.
      sig do
        params(
          external_fiat_account: Privy::ExternalFiatAccount::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A Bridge external fiat account linked to a user.
        external_fiat_account:
      )
      end

      sig do
        override.returns({ external_fiat_account: Privy::ExternalFiatAccount })
      end
      def to_hash
      end
    end
  end
end
