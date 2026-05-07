# typed: strong

module Privy
  module Models
    class FiatOnrampSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FiatOnrampSource, Privy::Internal::AnyHash)
        end

      # A positive decimal amount as a string (e.g. "100", "50.25", "0.001").
      sig { returns(String) }
      attr_accessor :amount

      # ISO 4217 fiat currency code. Three uppercase ASCII letters.
      sig { returns(String) }
      attr_accessor :asset

      # Source currency details for a fiat onramp quote request.
      sig { params(amount: String, asset: String).returns(T.attached_class) }
      def self.new(
        # A positive decimal amount as a string (e.g. "100", "50.25", "0.001").
        amount:,
        # ISO 4217 fiat currency code. Three uppercase ASCII letters.
        asset:
      )
      end

      sig { override.returns({ amount: String, asset: String }) }
      def to_hash
      end
    end
  end
end
