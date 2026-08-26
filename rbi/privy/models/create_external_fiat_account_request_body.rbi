# typed: strong

module Privy
  module Models
    class CreateExternalFiatAccountRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateExternalFiatAccountRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # Bank account details. The `type` field discriminates which shape applies.
      sig do
        returns(
          T.any(
            Privy::ExternalFiatAccountUsData,
            Privy::ExternalFiatAccountGBData,
            Privy::ExternalFiatAccountPixData,
            Privy::ExternalFiatAccountIbanData,
            Privy::ExternalFiatAccountSwiftData
          )
        )
      end
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :account_owner_name

      sig { returns(String) }
      attr_accessor :currency

      # Discriminator: the external fiat account is orchestrated via Bridge.
      sig do
        returns(Privy::CreateExternalFiatAccountRequestBody::Provider::OrSymbol)
      end
      attr_accessor :provider

      # Physical address associated with an external fiat account.
      sig { returns(T.nilable(Privy::ExternalFiatAccountAddress)) }
      attr_reader :address

      sig { params(address: Privy::ExternalFiatAccountAddress::OrHash).void }
      attr_writer :address

      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { params(bank_name: String).void }
      attr_writer :bank_name

      # The Privy API environment.
      sig { returns(T.nilable(Privy::Environment::OrSymbol)) }
      attr_reader :environment

      sig { params(environment: Privy::Environment::OrSymbol).void }
      attr_writer :environment

      # Request body for creating a Bridge external fiat account.
      sig do
        params(
          account:
            T.any(
              Privy::ExternalFiatAccountUsData::OrHash,
              Privy::ExternalFiatAccountGBData::OrHash,
              Privy::ExternalFiatAccountPixData::OrHash,
              Privy::ExternalFiatAccountIbanData::OrHash,
              Privy::ExternalFiatAccountSwiftData::OrHash
            ),
          account_owner_name: String,
          currency: String,
          provider:
            Privy::CreateExternalFiatAccountRequestBody::Provider::OrSymbol,
          address: Privy::ExternalFiatAccountAddress::OrHash,
          bank_name: String,
          environment: Privy::Environment::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Bank account details. The `type` field discriminates which shape applies.
        account:,
        account_owner_name:,
        currency:,
        # Discriminator: the external fiat account is orchestrated via Bridge.
        provider:,
        # Physical address associated with an external fiat account.
        address: nil,
        bank_name: nil,
        # The Privy API environment.
        environment: nil
      )
      end

      sig do
        override.returns(
          {
            account:
              T.any(
                Privy::ExternalFiatAccountUsData,
                Privy::ExternalFiatAccountGBData,
                Privy::ExternalFiatAccountPixData,
                Privy::ExternalFiatAccountIbanData,
                Privy::ExternalFiatAccountSwiftData
              ),
            account_owner_name: String,
            currency: String,
            provider:
              Privy::CreateExternalFiatAccountRequestBody::Provider::OrSymbol,
            address: Privy::ExternalFiatAccountAddress,
            bank_name: String,
            environment: Privy::Environment::OrSymbol
          }
        )
      end
      def to_hash
      end

      # Discriminator: the external fiat account is orchestrated via Bridge.
      module Provider
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CreateExternalFiatAccountRequestBody::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRIDGE =
          T.let(
            :bridge,
            Privy::CreateExternalFiatAccountRequestBody::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CreateExternalFiatAccountRequestBody::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
