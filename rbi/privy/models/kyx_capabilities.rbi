# typed: strong

module Privy
  module Models
    class KyxCapabilities < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::KyxCapabilities, Privy::Internal::AnyHash) }

      # Status of a capability. Passthrough from the provider.
      sig { returns(String) }
      attr_accessor :payin_crypto

      # Status of a capability. Passthrough from the provider.
      sig { returns(String) }
      attr_accessor :payin_fiat

      # Status of a capability. Passthrough from the provider.
      sig { returns(String) }
      attr_accessor :payout_crypto

      # Status of a capability. Passthrough from the provider.
      sig { returns(String) }
      attr_accessor :payout_fiat

      # Capability statuses for the customer.
      sig do
        params(
          payin_crypto: String,
          payin_fiat: String,
          payout_crypto: String,
          payout_fiat: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Status of a capability. Passthrough from the provider.
        payin_crypto:,
        # Status of a capability. Passthrough from the provider.
        payin_fiat:,
        # Status of a capability. Passthrough from the provider.
        payout_crypto:,
        # Status of a capability. Passthrough from the provider.
        payout_fiat:
      )
      end

      sig do
        override.returns(
          {
            payin_crypto: String,
            payin_fiat: String,
            payout_crypto: String,
            payout_fiat: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
