# typed: strong

module Privy
  module Models
    class BridgeCreateFiatDepositAccountRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::BridgeCreateFiatDepositAccountRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # The destination crypto asset and chain for a fiat deposit account.
      sig { returns(Privy::FiatDepositAccountDestination) }
      attr_reader :destination

      sig do
        params(destination: Privy::FiatDepositAccountDestination::OrHash).void
      end
      attr_writer :destination

      # Discriminator: the fiat deposit account is orchestrated via Bridge.
      sig do
        returns(
          Privy::BridgeCreateFiatDepositAccountRequestBody::Provider::OrSymbol
        )
      end
      attr_accessor :provider

      # The source fiat currency for a fiat deposit account.
      sig { returns(Privy::CreateFiatDepositAccountSource) }
      attr_reader :source

      sig { params(source: Privy::CreateFiatDepositAccountSource::OrHash).void }
      attr_writer :source

      # The Privy API environment.
      sig { returns(T.nilable(Privy::Environment::OrSymbol)) }
      attr_reader :environment

      sig { params(environment: Privy::Environment::OrSymbol).void }
      attr_writer :environment

      # Request body for creating a Bridge fiat deposit account linked to a wallet.
      sig do
        params(
          destination: Privy::FiatDepositAccountDestination::OrHash,
          provider:
            Privy::BridgeCreateFiatDepositAccountRequestBody::Provider::OrSymbol,
          source: Privy::CreateFiatDepositAccountSource::OrHash,
          environment: Privy::Environment::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The destination crypto asset and chain for a fiat deposit account.
        destination:,
        # Discriminator: the fiat deposit account is orchestrated via Bridge.
        provider:,
        # The source fiat currency for a fiat deposit account.
        source:,
        # The Privy API environment.
        environment: nil
      )
      end

      sig do
        override.returns(
          {
            destination: Privy::FiatDepositAccountDestination,
            provider:
              Privy::BridgeCreateFiatDepositAccountRequestBody::Provider::OrSymbol,
            source: Privy::CreateFiatDepositAccountSource,
            environment: Privy::Environment::OrSymbol
          }
        )
      end
      def to_hash
      end

      # Discriminator: the fiat deposit account is orchestrated via Bridge.
      module Provider
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::BridgeCreateFiatDepositAccountRequestBody::Provider
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRIDGE =
          T.let(
            :bridge,
            Privy::BridgeCreateFiatDepositAccountRequestBody::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeCreateFiatDepositAccountRequestBody::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
