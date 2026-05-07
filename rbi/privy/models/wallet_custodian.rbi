# typed: strong

module Privy
  module Models
    class WalletCustodian < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::WalletCustodian, Privy::Internal::AnyHash) }

      # The custodian responsible for the wallet.
      sig { returns(String) }
      attr_accessor :provider

      # The resource ID of the beneficiary of the custodial wallet.
      sig { returns(String) }
      attr_accessor :provider_user_id

      # Information about the custodian managing this wallet.
      sig do
        params(provider: String, provider_user_id: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The custodian responsible for the wallet.
        provider:,
        # The resource ID of the beneficiary of the custodial wallet.
        provider_user_id:
      )
      end

      sig { override.returns({ provider: String, provider_user_id: String }) }
      def to_hash
      end
    end
  end
end
