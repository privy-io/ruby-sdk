# typed: strong

module Privy
  module Models
    class OAuthTransferRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthTransferRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :nonce

      # User info for an OAuth transfer.
      sig { returns(Privy::OAuthTransferUserInfo) }
      attr_reader :user_info

      sig { params(user_info: Privy::OAuthTransferUserInfo::OrHash).void }
      attr_writer :user_info

      # The request body for transferring an OAuth account.
      sig do
        params(
          nonce: String,
          user_info: Privy::OAuthTransferUserInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        nonce:,
        # User info for an OAuth transfer.
        user_info:
      )
      end

      sig do
        override.returns(
          { nonce: String, user_info: Privy::OAuthTransferUserInfo }
        )
      end
      def to_hash
      end
    end
  end
end
