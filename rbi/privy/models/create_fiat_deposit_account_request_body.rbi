# typed: strong

module Privy
  module Models
    class CreateFiatDepositAccountRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateFiatDepositAccountRequestBody,
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
        returns(Privy::CreateFiatDepositAccountRequestBody::Provider::OrSymbol)
      end
      attr_accessor :provider

      # The source fiat currency for a fiat deposit account.
      sig { returns(Privy::CreateFiatDepositAccountSource) }
      attr_reader :source

      sig { params(source: Privy::CreateFiatDepositAccountSource::OrHash).void }
      attr_writer :source

      # A developer fee as a percentage string from 0 up to (not including) 100, e.g.
      # "1.5" for 1.5%.
      sig { returns(T.nilable(String)) }
      attr_reader :developer_fee_percent

      sig { params(developer_fee_percent: String).void }
      attr_writer :developer_fee_percent

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
            Privy::CreateFiatDepositAccountRequestBody::Provider::OrSymbol,
          source: Privy::CreateFiatDepositAccountSource::OrHash,
          developer_fee_percent: String,
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
        # A developer fee as a percentage string from 0 up to (not including) 100, e.g.
        # "1.5" for 1.5%.
        developer_fee_percent: nil,
        # The Privy API environment.
        environment: nil
      )
      end

      sig do
        override.returns(
          {
            destination: Privy::FiatDepositAccountDestination,
            provider:
              Privy::CreateFiatDepositAccountRequestBody::Provider::OrSymbol,
            source: Privy::CreateFiatDepositAccountSource,
            developer_fee_percent: String,
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
            T.all(Symbol, Privy::CreateFiatDepositAccountRequestBody::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRIDGE =
          T.let(
            :bridge,
            Privy::CreateFiatDepositAccountRequestBody::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CreateFiatDepositAccountRequestBody::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
