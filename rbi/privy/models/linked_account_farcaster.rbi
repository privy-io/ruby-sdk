# typed: strong

module Privy
  module Models
    class LinkedAccountFarcaster < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountFarcaster, Privy::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :fid

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(String) }
      attr_accessor :owner_address

      sig { returns(Privy::LinkedAccountFarcaster::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

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
      attr_reader :profile_picture

      sig { params(profile_picture: String).void }
      attr_writer :profile_picture

      sig { returns(T.nilable(String)) }
      attr_reader :profile_picture_url

      sig { params(profile_picture_url: String).void }
      attr_writer :profile_picture_url

      sig { returns(T.nilable(String)) }
      attr_reader :signer_public_key

      sig { params(signer_public_key: String).void }
      attr_writer :signer_public_key

      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      # A Farcaster account linked to the user.
      sig do
        params(
          fid: Float,
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          owner_address: String,
          type: Privy::LinkedAccountFarcaster::Type::OrSymbol,
          verified_at: Float,
          bio: String,
          display_name: String,
          homepage_url: String,
          profile_picture: String,
          profile_picture_url: String,
          signer_public_key: String,
          username: String
        ).returns(T.attached_class)
      end
      def self.new(
        fid:,
        first_verified_at:,
        latest_verified_at:,
        owner_address:,
        type:,
        verified_at:,
        bio: nil,
        display_name: nil,
        homepage_url: nil,
        profile_picture: nil,
        profile_picture_url: nil,
        signer_public_key: nil,
        username: nil
      )
      end

      sig do
        override.returns(
          {
            fid: Float,
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            owner_address: String,
            type: Privy::LinkedAccountFarcaster::Type::TaggedSymbol,
            verified_at: Float,
            bio: String,
            display_name: String,
            homepage_url: String,
            profile_picture: String,
            profile_picture_url: String,
            signer_public_key: String,
            username: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountFarcaster::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FARCASTER =
          T.let(:farcaster, Privy::LinkedAccountFarcaster::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountFarcaster::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
