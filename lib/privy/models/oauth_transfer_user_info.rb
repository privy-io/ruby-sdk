# frozen_string_literal: true

module Privy
  module Models
    class OAuthTransferUserInfo < Privy::Internal::Type::BaseModel
      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute embedded_wallet_addresses
      #
      #   @return [Array<String>, nil]
      optional :embedded_wallet_addresses,
               Privy::Internal::Type::ArrayOf[String],
               api_name: :embeddedWalletAddresses

      # @!attribute meta
      #   Metadata for an OAuth transfer user info.
      #
      #   @return [Privy::Models::OAuthTransferUserInfoMeta, nil]
      optional :meta, -> { Privy::OAuthTransferUserInfoMeta }

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute profile_picture_url
      #
      #   @return [String, nil]
      optional :profile_picture_url, String, api_name: :profilePictureUrl

      # @!attribute smart_wallet_addresses
      #
      #   @return [Array<String>, nil]
      optional :smart_wallet_addresses,
               Privy::Internal::Type::ArrayOf[String],
               api_name: :smartWalletAddresses

      # @!attribute username
      #
      #   @return [String, nil]
      optional :username, String

      # @!attribute vanity_name
      #
      #   @return [String, nil]
      optional :vanity_name, String, api_name: :vanityName

      # @!method initialize(subject:, email: nil, embedded_wallet_addresses: nil, meta: nil, name: nil, profile_picture_url: nil, smart_wallet_addresses: nil, username: nil, vanity_name: nil)
      #   User info for an OAuth transfer.
      #
      #   @param subject [String]
      #
      #   @param email [String, nil]
      #
      #   @param embedded_wallet_addresses [Array<String>]
      #
      #   @param meta [Privy::Models::OAuthTransferUserInfoMeta] Metadata for an OAuth transfer user info.
      #
      #   @param name [String]
      #
      #   @param profile_picture_url [String]
      #
      #   @param smart_wallet_addresses [Array<String>]
      #
      #   @param username [String]
      #
      #   @param vanity_name [String]
    end
  end
end
