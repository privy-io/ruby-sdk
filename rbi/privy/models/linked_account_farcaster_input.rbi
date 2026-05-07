# typed: strong

module Privy
  module Models
    class LinkedAccountFarcasterInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountFarcasterInput, Privy::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :fid

      sig { returns(String) }
      attr_accessor :owner_address

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :bio

      sig { params(bio: String).void }
      attr_writer :bio

      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      sig { returns(T.nilable(String)) }
      attr_reader :homepage_url

      sig { params(homepage_url: String).void }
      attr_writer :homepage_url

      sig { returns(T.nilable(String)) }
      attr_reader :profile_picture_url

      sig { params(profile_picture_url: String).void }
      attr_writer :profile_picture_url

      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      # The payload for importing a Farcaster account.
      sig do
        params(
          fid: Integer,
          owner_address: String,
          bio: String,
          display_name: String,
          homepage_url: String,
          profile_picture_url: String,
          username: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        fid:,
        owner_address:,
        bio: nil,
        display_name: nil,
        homepage_url: nil,
        profile_picture_url: nil,
        username: nil,
        type: :farcaster
      )
      end

      sig do
        override.returns(
          {
            fid: Integer,
            owner_address: String,
            type: Symbol,
            bio: String,
            display_name: String,
            homepage_url: String,
            profile_picture_url: String,
            username: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
