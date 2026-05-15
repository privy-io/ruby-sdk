# typed: strong

module Privy
  module Models
    class UserSetCustomMetadataParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::UserSetCustomMetadataParams, Privy::Internal::AnyHash)
        end

      # ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      # Custom metadata associated with the user.
      sig { returns(T::Hash[Symbol, Privy::CustomMetadataItem::Variants]) }
      attr_accessor :custom_metadata

      sig do
        params(
          user_id: String,
          custom_metadata: T::Hash[Symbol, Privy::CustomMetadataItem::Variants],
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the user.
        user_id:,
        # Custom metadata associated with the user.
        custom_metadata:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            user_id: String,
            custom_metadata:
              T::Hash[Symbol, Privy::CustomMetadataItem::Variants],
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
