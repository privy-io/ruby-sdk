# typed: strong

module Privy
  module Models
    class FiatDepositAccountSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FiatDepositAccountSource, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(T::Array[String]) }
      attr_accessor :payment_rails

      # The source fiat currency and available payment rails for a fiat deposit account.
      sig do
        params(currency: String, payment_rails: T::Array[String]).returns(
          T.attached_class
        )
      end
      def self.new(currency:, payment_rails:)
      end

      sig do
        override.returns({ currency: String, payment_rails: T::Array[String] })
      end
      def to_hash
      end
    end
  end
end
