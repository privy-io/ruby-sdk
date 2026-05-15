# typed: strong

module Privy
  module Models
    class AuthorizationKeyDashboardResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::AuthorizationKeyDashboardResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Float) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :display_name

      sig { returns(String) }
      attr_accessor :public_key

      # The role of an authorization key, controlling what actions it can authorize on a
      # wallet.
      sig { returns(T.nilable(Privy::AuthorizationKeyRole::OrSymbol)) }
      attr_accessor :role

      # Dashboard response for a wallet authorization key (includes role, which is an
      # internal-only concept).
      sig do
        params(
          id: String,
          created_at: Float,
          display_name: T.nilable(String),
          public_key: String,
          role: T.nilable(Privy::AuthorizationKeyRole::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        display_name:,
        public_key:,
        # The role of an authorization key, controlling what actions it can authorize on a
        # wallet.
        role:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Float,
            display_name: T.nilable(String),
            public_key: String,
            role: T.nilable(Privy::AuthorizationKeyRole::OrSymbol)
          }
        )
      end
      def to_hash
      end
    end
  end
end
