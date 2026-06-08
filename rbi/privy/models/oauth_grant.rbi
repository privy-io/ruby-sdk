# typed: strong

module Privy
  module Models
    class OAuthGrant < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::OAuthGrant, Privy::Internal::AnyHash) }

      # The grant identifier.
      sig { returns(String) }
      attr_accessor :id

      # When the grant was first created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The OAuth grant type that created this grant.
      sig { returns(Privy::OAuthGrant::GrantType::OrSymbol) }
      attr_accessor :grant_type

      # When the grant was last used (e.g. token refreshed).
      sig { returns(Time) }
      attr_accessor :last_used_at

      # An active OAuth grant representing an authorized session.
      sig do
        params(
          id: String,
          created_at: Time,
          grant_type: Privy::OAuthGrant::GrantType::OrSymbol,
          last_used_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The grant identifier.
        id:,
        # When the grant was first created.
        created_at:,
        # The OAuth grant type that created this grant.
        grant_type:,
        # When the grant was last used (e.g. token refreshed).
        last_used_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            grant_type: Privy::OAuthGrant::GrantType::OrSymbol,
            last_used_at: Time
          }
        )
      end
      def to_hash
      end

      # The OAuth grant type that created this grant.
      module GrantType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::OAuthGrant::GrantType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEVICE_CODE =
          T.let(:device_code, Privy::OAuthGrant::GrantType::TaggedSymbol)

        sig do
          override.returns(T::Array[Privy::OAuthGrant::GrantType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
