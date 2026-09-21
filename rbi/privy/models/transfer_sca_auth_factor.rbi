# typed: strong

module Privy
  module Models
    class TransferScaAuthFactor < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferScaAuthFactor, Privy::Internal::AnyHash)
        end

      # The ISO 8601 timestamp when this factor was authenticated.
      sig { returns(Time) }
      attr_accessor :authenticated_at

      # The type of authentication factor used. Known values are: `knowledge` (something
      # only the user knows, e.g. a PIN or password), `possession` (something only the
      # user has, e.g. a phone receiving an OTP or a hardware token), and `inherence`
      # (something the user is, e.g. a fingerprint or face scan). When `outcome` is
      # `sca_used`, the two factors in `auth_factors` must belong to two different
      # categories.
      sig do
        returns(T.any(Privy::TransferScaAuthFactorCategory::OrSymbol, String))
      end
      attr_accessor :category

      # Your internal identifier for this authentication event (e.g. a session ID,
      # transaction ID, or audit log reference). Used for reconciliation.
      sig { returns(String) }
      attr_accessor :reference

      # Authentication factor metadata for a transfer.
      sig do
        params(
          authenticated_at: Time,
          category:
            T.any(Privy::TransferScaAuthFactorCategory::OrSymbol, String),
          reference: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ISO 8601 timestamp when this factor was authenticated.
        authenticated_at:,
        # The type of authentication factor used. Known values are: `knowledge` (something
        # only the user knows, e.g. a PIN or password), `possession` (something only the
        # user has, e.g. a phone receiving an OTP or a hardware token), and `inherence`
        # (something the user is, e.g. a fingerprint or face scan). When `outcome` is
        # `sca_used`, the two factors in `auth_factors` must belong to two different
        # categories.
        category:,
        # Your internal identifier for this authentication event (e.g. a session ID,
        # transaction ID, or audit log reference). Used for reconciliation.
        reference:
      )
      end

      sig do
        override.returns(
          {
            authenticated_at: Time,
            category:
              T.any(Privy::TransferScaAuthFactorCategory::OrSymbol, String),
            reference: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
