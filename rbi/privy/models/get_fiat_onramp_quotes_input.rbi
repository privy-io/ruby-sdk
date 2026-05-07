# typed: strong

module Privy
  module Models
    class GetFiatOnrampQuotesInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GetFiatOnrampQuotesInput, Privy::Internal::AnyHash)
        end

      # Destination cryptocurrency details for a fiat onramp quote request.
      sig { returns(Privy::FiatOnrampDestination) }
      attr_reader :destination

      sig { params(destination: Privy::FiatOnrampDestination::OrHash).void }
      attr_writer :destination

      # Whether to use the sandbox or production environment for fiat onramp.
      sig { returns(Privy::FiatOnrampEnvironment::OrSymbol) }
      attr_accessor :environment

      # Source currency details for a fiat onramp quote request.
      sig { returns(Privy::FiatOnrampSource) }
      attr_reader :source

      sig { params(source: Privy::FiatOnrampSource::OrHash).void }
      attr_writer :source

      # The request input for getting fiat onramp quotes.
      sig do
        params(
          destination: Privy::FiatOnrampDestination::OrHash,
          environment: Privy::FiatOnrampEnvironment::OrSymbol,
          source: Privy::FiatOnrampSource::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Destination cryptocurrency details for a fiat onramp quote request.
        destination:,
        # Whether to use the sandbox or production environment for fiat onramp.
        environment:,
        # Source currency details for a fiat onramp quote request.
        source:
      )
      end

      sig do
        override.returns(
          {
            destination: Privy::FiatOnrampDestination,
            environment: Privy::FiatOnrampEnvironment::OrSymbol,
            source: Privy::FiatOnrampSource
          }
        )
      end
      def to_hash
      end
    end
  end
end
