# typed: strong

module Privy
  module Models
    class PatchUsersCustomMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PatchUsersCustomMetadata, Privy::Internal::AnyHash)
        end

      # Custom metadata associated with the user.
      sig { returns(T::Hash[Symbol, Privy::CustomMetadataItem::Variants]) }
      attr_accessor :custom_metadata

      # The payload for partially updating custom metadata on a user.
      sig do
        params(
          custom_metadata: T::Hash[Symbol, Privy::CustomMetadataItem::Variants]
        ).returns(T.attached_class)
      end
      def self.new(
        # Custom metadata associated with the user.
        custom_metadata:
      )
      end

      sig do
        override.returns(
          {
            custom_metadata:
              T::Hash[Symbol, Privy::CustomMetadataItem::Variants]
          }
        )
      end
      def to_hash
      end
    end
  end
end
