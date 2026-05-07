# typed: strong

module Privy
  module Models
    class GetFiatOnrampURLInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GetFiatOnrampURLInput, Privy::Internal::AnyHash)
        end

      # Destination cryptocurrency details for a fiat onramp quote request.
      sig { returns(Privy::FiatOnrampDestination) }
      attr_reader :destination

      sig { params(destination: Privy::FiatOnrampDestination::OrHash).void }
      attr_writer :destination

      sig { returns(String) }
      attr_accessor :payment_method

      # The fiat onramp provider to use.
      sig { returns(Privy::FiatOnrampProvider::OrSymbol) }
      attr_accessor :provider

      # Source currency details for a fiat onramp quote request.
      sig { returns(Privy::FiatOnrampSource) }
      attr_reader :source

      sig { params(source: Privy::FiatOnrampSource::OrHash).void }
      attr_writer :source

      sig { returns(T.nilable(String)) }
      attr_reader :redirect_url

      sig { params(redirect_url: String).void }
      attr_writer :redirect_url

      sig { returns(T.nilable(String)) }
      attr_reader :sub_provider

      sig { params(sub_provider: String).void }
      attr_writer :sub_provider

      # The request input for getting a fiat onramp provider session URL.
      sig do
        params(
          destination: Privy::FiatOnrampDestination::OrHash,
          payment_method: String,
          provider: Privy::FiatOnrampProvider::OrSymbol,
          source: Privy::FiatOnrampSource::OrHash,
          redirect_url: String,
          sub_provider: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Destination cryptocurrency details for a fiat onramp quote request.
        destination:,
        payment_method:,
        # The fiat onramp provider to use.
        provider:,
        # Source currency details for a fiat onramp quote request.
        source:,
        redirect_url: nil,
        sub_provider: nil
      )
      end

      sig do
        override.returns(
          {
            destination: Privy::FiatOnrampDestination,
            payment_method: String,
            provider: Privy::FiatOnrampProvider::OrSymbol,
            source: Privy::FiatOnrampSource,
            redirect_url: String,
            sub_provider: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
