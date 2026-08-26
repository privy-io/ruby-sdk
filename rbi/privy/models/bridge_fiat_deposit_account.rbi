# typed: strong

module Privy
  module Models
    class BridgeFiatDepositAccount < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BridgeFiatDepositAccount, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :created_at

      # Bank or payment deposit instructions for a fiat deposit account. Shape varies by
      # source currency.
      sig { returns(T.nilable(Privy::FiatDepositInstructions)) }
      attr_reader :deposit_instructions

      sig do
        params(
          deposit_instructions:
            T.nilable(Privy::FiatDepositInstructions::OrHash)
        ).void
      end
      attr_writer :deposit_instructions

      # The destination crypto asset and chain for a fiat deposit account.
      sig { returns(Privy::FiatDepositAccountDestination) }
      attr_reader :destination

      sig do
        params(destination: Privy::FiatDepositAccountDestination::OrHash).void
      end
      attr_writer :destination

      # The Privy API environment.
      sig { returns(Privy::Environment::OrSymbol) }
      attr_accessor :environment

      # Discriminator: the fiat deposit account is orchestrated via Bridge.
      sig { returns(Privy::BridgeFiatDepositAccount::Provider::OrSymbol) }
      attr_accessor :provider

      # The source fiat currency and available payment rails for a fiat deposit account.
      sig { returns(Privy::FiatDepositAccountSource) }
      attr_reader :source

      sig { params(source: Privy::FiatDepositAccountSource::OrHash).void }
      attr_writer :source

      # Activation status of a fiat deposit account.
      sig { returns(Privy::FiatDepositAccountStatus::OrSymbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :wallet_id

      # A Bridge fiat deposit account linked to a wallet.
      sig do
        params(
          id: String,
          created_at: String,
          deposit_instructions:
            T.nilable(Privy::FiatDepositInstructions::OrHash),
          destination: Privy::FiatDepositAccountDestination::OrHash,
          environment: Privy::Environment::OrSymbol,
          provider: Privy::BridgeFiatDepositAccount::Provider::OrSymbol,
          source: Privy::FiatDepositAccountSource::OrHash,
          status: Privy::FiatDepositAccountStatus::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # Bank or payment deposit instructions for a fiat deposit account. Shape varies by
        # source currency.
        deposit_instructions:,
        # The destination crypto asset and chain for a fiat deposit account.
        destination:,
        # The Privy API environment.
        environment:,
        # Discriminator: the fiat deposit account is orchestrated via Bridge.
        provider:,
        # The source fiat currency and available payment rails for a fiat deposit account.
        source:,
        # Activation status of a fiat deposit account.
        status:,
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            deposit_instructions: T.nilable(Privy::FiatDepositInstructions),
            destination: Privy::FiatDepositAccountDestination,
            environment: Privy::Environment::OrSymbol,
            provider: Privy::BridgeFiatDepositAccount::Provider::OrSymbol,
            source: Privy::FiatDepositAccountSource,
            status: Privy::FiatDepositAccountStatus::OrSymbol,
            wallet_id: String
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
            T.all(Symbol, Privy::BridgeFiatDepositAccount::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRIDGE =
          T.let(
            :bridge,
            Privy::BridgeFiatDepositAccount::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeFiatDepositAccount::Provider::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
