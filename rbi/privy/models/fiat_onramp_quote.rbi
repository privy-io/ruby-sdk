# typed: strong

module Privy
  module Models
    class FiatOnrampQuote < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::FiatOnrampQuote, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :payment_method

      # The fiat onramp provider to use.
      sig { returns(Privy::FiatOnrampProvider::OrSymbol) }
      attr_accessor :provider

      sig { returns(T.nilable(String)) }
      attr_accessor :destination_currency_code

      sig { returns(T.nilable(String)) }
      attr_reader :payment_method_category

      sig { params(payment_method_category: String).void }
      attr_writer :payment_method_category

      sig { returns(T.nilable(Float)) }
      attr_accessor :source_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :source_currency_code

      sig { returns(T.nilable(String)) }
      attr_accessor :sub_provider

      # A single fiat onramp quote from a provider.
      sig do
        params(
          payment_method: String,
          provider: Privy::FiatOnrampProvider::OrSymbol,
          destination_currency_code: T.nilable(String),
          payment_method_category: String,
          source_amount: T.nilable(Float),
          source_currency_code: T.nilable(String),
          sub_provider: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        payment_method:,
        # The fiat onramp provider to use.
        provider:,
        destination_currency_code: nil,
        payment_method_category: nil,
        source_amount: nil,
        source_currency_code: nil,
        sub_provider: nil
      )
      end

      sig do
        override.returns(
          {
            payment_method: String,
            provider: Privy::FiatOnrampProvider::OrSymbol,
            destination_currency_code: T.nilable(String),
            payment_method_category: String,
            source_amount: T.nilable(Float),
            source_currency_code: T.nilable(String),
            sub_provider: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
