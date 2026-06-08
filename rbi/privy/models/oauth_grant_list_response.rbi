# typed: strong

module Privy
  module Models
    class OAuthGrantListResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthGrantListResponse, Privy::Internal::AnyHash)
        end

      # Active grants.
      sig { returns(T::Array[Privy::OAuthGrant]) }
      attr_accessor :data

      # List of active OAuth grants for the authenticated user.
      sig do
        params(data: T::Array[Privy::OAuthGrant::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # Active grants.
        data:
      )
      end

      sig { override.returns({ data: T::Array[Privy::OAuthGrant] }) }
      def to_hash
      end
    end
  end
end
