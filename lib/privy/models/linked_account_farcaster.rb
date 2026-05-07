# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountFarcaster < Privy::Internal::Type::BaseModel
      # @!attribute fid
      #
      #   @return [Float]
      required :fid, Float

      # @!attribute first_verified_at
      #
      #   @return [Float, nil]
      required :first_verified_at, Float, nil?: true

      # @!attribute latest_verified_at
      #
      #   @return [Float, nil]
      required :latest_verified_at, Float, nil?: true

      # @!attribute owner_address
      #
      #   @return [String]
      required :owner_address, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountFarcaster::Type]
      required :type, enum: -> { Privy::LinkedAccountFarcaster::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!attribute bio
      #
      #   @return [String, nil]
      optional :bio, String

      # @!attribute display_name
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute homepage_url
      #
      #   @return [String, nil]
      optional :homepage_url, String

      # @!attribute profile_picture
      #
      #   @return [String, nil]
      optional :profile_picture, String

      # @!attribute profile_picture_url
      #
      #   @return [String, nil]
      optional :profile_picture_url, String

      # @!attribute signer_public_key
      #
      #   @return [String, nil]
      optional :signer_public_key, String

      # @!attribute username
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(fid:, first_verified_at:, latest_verified_at:, owner_address:, type:, verified_at:, bio: nil, display_name: nil, homepage_url: nil, profile_picture: nil, profile_picture_url: nil, signer_public_key: nil, username: nil)
      #   A Farcaster account linked to the user.
      #
      #   @param fid [Float]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param owner_address [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountFarcaster::Type]
      #   @param verified_at [Float]
      #   @param bio [String]
      #   @param display_name [String]
      #   @param homepage_url [String]
      #   @param profile_picture [String]
      #   @param profile_picture_url [String]
      #   @param signer_public_key [String]
      #   @param username [String]

      # @see Privy::Models::LinkedAccountFarcaster#type
      module Type
        extend Privy::Internal::Type::Enum

        FARCASTER = :farcaster

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
