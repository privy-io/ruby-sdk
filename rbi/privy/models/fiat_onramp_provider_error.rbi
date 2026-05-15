# typed: strong

module Privy
  module Models
    class FiatOnrampProviderError < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FiatOnrampProviderError, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :error

      # The fiat onramp provider to use.
      sig { returns(Privy::FiatOnrampProvider::OrSymbol) }
      attr_accessor :provider

      # An error from a specific fiat onramp provider when fetching quotes.
      sig do
        params(
          error: String,
          provider: Privy::FiatOnrampProvider::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        error:,
        # The fiat onramp provider to use.
        provider:
      )
      end

      sig do
        override.returns(
          { error: String, provider: Privy::FiatOnrampProvider::OrSymbol }
        )
      end
      def to_hash
      end
    end
  end
end
