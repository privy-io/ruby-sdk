# typed: strong

module Privy
  module Models
    class OAuthTransferUserInfo < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthTransferUserInfo, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(T.nilable(String)) }
      attr_accessor :email

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :embedded_wallet_addresses

      sig { params(embedded_wallet_addresses: T::Array[String]).void }
      attr_writer :embedded_wallet_addresses

      # Metadata for an OAuth transfer user info.
      sig { returns(T.nilable(Privy::OAuthTransferUserInfoMeta)) }
      attr_reader :meta

      sig { params(meta: Privy::OAuthTransferUserInfoMeta::OrHash).void }
      attr_writer :meta

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :profile_picture_url

      sig { params(profile_picture_url: String).void }
      attr_writer :profile_picture_url

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :smart_wallet_addresses

      sig { params(smart_wallet_addresses: T::Array[String]).void }
      attr_writer :smart_wallet_addresses

      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      sig { returns(T.nilable(String)) }
      attr_reader :vanity_name

      sig { params(vanity_name: String).void }
      attr_writer :vanity_name

      # User info for an OAuth transfer.
      sig do
        params(
          subject: String,
          email: T.nilable(String),
          embedded_wallet_addresses: T::Array[String],
          meta: Privy::OAuthTransferUserInfoMeta::OrHash,
          name: String,
          profile_picture_url: String,
          smart_wallet_addresses: T::Array[String],
          username: String,
          vanity_name: String
        ).returns(T.attached_class)
      end
      def self.new(
        subject:,
        email: nil,
        embedded_wallet_addresses: nil,
        # Metadata for an OAuth transfer user info.
        meta: nil,
        name: nil,
        profile_picture_url: nil,
        smart_wallet_addresses: nil,
        username: nil,
        vanity_name: nil
      )
      end

      sig do
        override.returns(
          {
            subject: String,
            email: T.nilable(String),
            embedded_wallet_addresses: T::Array[String],
            meta: Privy::OAuthTransferUserInfoMeta,
            name: String,
            profile_picture_url: String,
            smart_wallet_addresses: T::Array[String],
            username: String,
            vanity_name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
