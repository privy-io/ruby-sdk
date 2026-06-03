# typed: strong

module Privy
  module Models
    class OAuthGrantRevokeResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthGrantRevokeResponse, Privy::Internal::AnyHash)
        end

      # Whether the revocation was processed.
      sig { returns(Privy::OAuthGrantRevokeResponse::Success::OrBoolean) }
      attr_accessor :success

      # Response from revoking an OAuth grant.
      sig do
        params(
          success: Privy::OAuthGrantRevokeResponse::Success::OrBoolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether the revocation was processed.
        success:
      )
      end

      sig do
        override.returns(
          { success: Privy::OAuthGrantRevokeResponse::Success::OrBoolean }
        )
      end
      def to_hash
      end

      # Whether the revocation was processed.
      module Success
        extend Privy::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(T::Boolean, Privy::OAuthGrantRevokeResponse::Success)
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(true, Privy::OAuthGrantRevokeResponse::Success::TaggedBoolean)

        sig do
          override.returns(
            T::Array[Privy::OAuthGrantRevokeResponse::Success::TaggedBoolean]
          )
        end
        def self.values
        end
      end
    end
  end
end
