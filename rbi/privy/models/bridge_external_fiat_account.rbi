# typed: strong

module Privy
  module Models
    class BridgeExternalFiatAccount < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BridgeExternalFiatAccount, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_owner_name

      sig { returns(String) }
      attr_accessor :account_type

      sig { returns(String) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :currency

      # The Privy API environment.
      sig { returns(Privy::Environment::OrSymbol) }
      attr_accessor :environment

      # Discriminator: the external fiat account is orchestrated via Bridge.
      sig { returns(Privy::BridgeExternalFiatAccount::Provider::OrSymbol) }
      attr_accessor :provider

      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { params(bank_name: String).void }
      attr_writer :bank_name

      sig { returns(T.nilable(String)) }
      attr_reader :last_4

      sig { params(last_4: String).void }
      attr_writer :last_4

      # A Bridge external fiat account linked to a user.
      sig do
        params(
          id: String,
          account_owner_name: String,
          account_type: String,
          created_at: String,
          currency: String,
          environment: Privy::Environment::OrSymbol,
          provider: Privy::BridgeExternalFiatAccount::Provider::OrSymbol,
          user_id: String,
          bank_name: String,
          last_4: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        account_owner_name:,
        account_type:,
        created_at:,
        currency:,
        # The Privy API environment.
        environment:,
        # Discriminator: the external fiat account is orchestrated via Bridge.
        provider:,
        user_id:,
        bank_name: nil,
        last_4: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_owner_name: String,
            account_type: String,
            created_at: String,
            currency: String,
            environment: Privy::Environment::OrSymbol,
            provider: Privy::BridgeExternalFiatAccount::Provider::OrSymbol,
            user_id: String,
            bank_name: String,
            last_4: String
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
            T.all(Symbol, Privy::BridgeExternalFiatAccount::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRIDGE =
          T.let(
            :bridge,
            Privy::BridgeExternalFiatAccount::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeExternalFiatAccount::Provider::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
