# typed: strong

module Privy
  module Models
    class OrganizationSecretsListResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OrganizationSecretsListResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::OrganizationSecretView]) }
      attr_accessor :data

      # Response returned when listing organization secrets for an account.
      sig do
        params(data: T::Array[Privy::OrganizationSecretView::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig do
        override.returns({ data: T::Array[Privy::OrganizationSecretView] })
      end
      def to_hash
      end
    end
  end
end
