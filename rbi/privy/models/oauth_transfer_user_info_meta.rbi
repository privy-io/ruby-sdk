# typed: strong

module Privy
  module Models
    class OAuthTransferUserInfoMeta < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthTransferUserInfoMeta, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :provider_app_id

      sig { params(provider_app_id: String).void }
      attr_writer :provider_app_id

      # Metadata for an OAuth transfer user info.
      sig { params(provider_app_id: String).returns(T.attached_class) }
      def self.new(provider_app_id: nil)
      end

      sig { override.returns({ provider_app_id: String }) }
      def to_hash
      end
    end
  end
end
