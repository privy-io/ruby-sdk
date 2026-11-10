# typed: strong

module Privy
  module Models
    class ExternalFiatAccountPaymentRails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ExternalFiatAccountPaymentRails,
            Privy::Internal::AnyHash
          )
        end

      # Supported payment rails, using the same names as `payment_rail` on payouts, such
      # as ach, ach_same_day, wire, or fednow.
      sig { returns(T::Array[String]) }
      attr_accessor :supported

      # Reasons payment rails are unavailable, keyed by rail name.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :unsupported_reasons

      # Payment rails supported by an external fiat account and reasons other rails are
      # unavailable.
      sig do
        params(
          supported: T::Array[String],
          unsupported_reasons: T::Hash[Symbol, String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Supported payment rails, using the same names as `payment_rail` on payouts, such
        # as ach, ach_same_day, wire, or fednow.
        supported:,
        # Reasons payment rails are unavailable, keyed by rail name.
        unsupported_reasons:
      )
      end

      sig do
        override.returns(
          {
            supported: T::Array[String],
            unsupported_reasons: T::Hash[Symbol, String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
