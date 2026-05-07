# typed: strong

module Privy
  module Models
    class WalletAPIRegisterAuthorizationKeyInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAPIRegisterAuthorizationKeyInput,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :public_key

      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # The role of an authorization key, controlling what actions it can authorize on a
      # wallet.
      sig { returns(T.nilable(Privy::AuthorizationKeyRole::OrSymbol)) }
      attr_accessor :role

      # Input for registering or updating an application public signing key for
      # API-based wallet actions.
      sig do
        params(
          public_key: String,
          display_name: String,
          role: T.nilable(Privy::AuthorizationKeyRole::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        public_key:,
        display_name: nil,
        # The role of an authorization key, controlling what actions it can authorize on a
        # wallet.
        role: nil
      )
      end

      sig do
        override.returns(
          {
            public_key: String,
            display_name: String,
            role: T.nilable(Privy::AuthorizationKeyRole::OrSymbol)
          }
        )
      end
      def to_hash
      end
    end
  end
end
